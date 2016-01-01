$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'tdiary/cache/null'

class DummyConf
	def user_name
		"foo"
	end
end

class DummyCGI
	attr_accessor :params
end

class DummyTDiary
	attr_accessor :tdiary
end

class TDiaryBase
	def conf
		DummyConf.new
	end

	def rhtml
		"foo.rhtml"
	end

	def cgi
		@cgi ||= DummyCGI.new
	end

	def date
		Time.now
	end
end

class TDiaryMonth < TDiaryBase; end
class TDiaryLatest < TDiaryBase; end

# Local Variables:
# mode: ruby
# indent-tabs-mode: t
# tab-width: 3
# ruby-indent-level: 3
# End:
# vim: ts=3
