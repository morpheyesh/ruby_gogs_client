#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
module Main
  class GogsTokens

    def self.to_hash(response)
      index_hash = []
      i = 0
      config = Nokogiri::XML(response.body)
      config.css("repositories repositories").map do |node|
        node.children.map {|n|
          if n.name == 'url'
            index_hash << n.text.strip
          end
        }
      end
      {:status => response.code, :body => index_hash, :some_msg => response.message }
    end

    def self.list(username, password)

      main = Main::Gogs.new
      res = main.get_tokens(username, password)
      hash = {}
      if res.code != "200"
        hash = self.error(res)
      else
        hash = self.to_hash(res)
      end
      hash
    end

    def self.error(response)
      {:status => response.code, :body => "", :some_msg => response.message }
    end

    def to_s
      Main::Stuff.styled_hash(to_hash)
    end
  end
end
