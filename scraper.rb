#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = WikiData::Category.new( 'Category:Members of the National Assembly (Zambia)', 'en').member_titles
EveryPolitician::Wikidata.scrape_wikidata(names: { en: names }, output: false)
