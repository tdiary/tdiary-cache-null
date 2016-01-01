require 'spec_helper'

describe TDiary::Cache do
  context "TDiaryBase" do
    before do
      Object.send(:include, TDiary::Cache)
      @cache = Object.new

      @cache.should_not_receive(:store_data)
    end

    it { @cache.store_cache(:foo, "foo") }
  end

  context "TDiaryMonth" do
    before do
      DummyTDiary.send(:include, TDiary::Cache)
      @cache = DummyTDiary.new
      @cache.tdiary = TDiaryMonth.new
      @cache.store_cache(:foo, "foo")
    end

    it { expect(@cache.restore_cache("foo")).to be_nil }
  end

  context "TDiaryMonth" do
    before do
      DummyTDiary.send(:include, TDiary::Cache)
      @cache = DummyTDiary.new
      @cache.tdiary = TDiaryLatest.new
    end

    context "given params" do
      before do
        @cache.tdiary.cgi.params = {'date' => ['20131110']}
        @cache.should_not_receive(:store_data)
      end
      it { @cache.store_cache(:foo, "foo") }
    end

    context "not given params" do
      before do
        @cache.tdiary.cgi.params = {'date' => [nil]}
        @cache.store_cache(:foo, "foo")
      end
      it { expect(@cache.restore_cache("foo")).to be_nil }
    end
  end
end
