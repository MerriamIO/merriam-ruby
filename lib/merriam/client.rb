# frozen_string_literal: true

require 'http'
require 'merriam/core/language'
require 'merriam/core/response'
require 'merriam/core/result'
require 'merriam/core/translate_text'

module Merriam
  class Client
    include Merriam::Utils

    BASE_URL = 'https://merriam.io/api/v1'

    def languages
      resp = HTTPClient.get("#{BASE_URL}/languages.json", {}, headers)
      body = JSON.parse(resp.body)
      resp.status_code.eql?(200) ? [body].flatten.map { |b| Language.new(b) } : body
    end

    def detect(t)
      char_limit([t].flatten.join)
      resp = HTTPClient.post("#{BASE_URL}/detect.json", { t: [t].flatten }.to_json, headers)
      body = JSON.parse(resp.body)
      resp.status_code.eql?(200) ? [body].flatten.map { |b| Response.new(b) } : body
    end

    def translate_text(text, language_code)
      char_limit(text)
      data = {'t' => text, 'c' => language_code}
      resp = HTTPClient.post("#{BASE_URL}/translate_text.json", data.to_json, headers)
      body = JSON.parse(resp.body)
      resp.status_code.eql?(200) ? TranslateText.new(body) : body
    end

    def translate_html(html, language_code)
      char_limit(html)
      data = {'t' => html, 'c' => language_code}
      resp = HTTPClient.post("#{BASE_URL}/translate_html.json", data.to_json, headers)
      body = JSON.parse(resp.body)
      resp.status_code.eql?(200) ? TranslateText.new(body) : body
    end

    def translate_url(url, language_code)
      str = open(url).read
      char_limit(str)
      data = {'t' => str, 'c' => language_code}
      resp = HTTPClient.post("#{BASE_URL}/translate_html.json", data.to_json, headers)
      body = JSON.parse(resp.body)
      resp.status_code.eql?(200) ? TranslateText.new(body) : body
    rescue => e
      puts e.message
    end

    private

    def headers
      {'Content-Type' => 'application/json', 'key' => ENV['MERRIAM_API_KEY']}
    end

    def char_limit(str)
      puts 'Character limit is 31250' if str.size > 312_50
    end
  end
end
