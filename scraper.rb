#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = WikiData::Category.new( 'Category:Members of the National Assembly (Zambia)', 'en').member_titles

query = 'SELECT DISTINCT ?item WHERE { ?item p:P39/pq:P2937 wd:Q45380990 }'
p39s = EveryPolitician::Wikidata.sparql(query)

EveryPolitician::Wikidata.scrape_wikidata(ids: p39s, names: { en: names })
