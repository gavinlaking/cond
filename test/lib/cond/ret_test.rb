require_relative '../../test_helper'

module Cond
  describe Ret do
    let(:experiment) { Ret }
    let(:truthiness) { "Ain't that the truth!" }
    let(:falsehood)  { "You're a liar and a cheat!" }
    let(:condition)  {}

    subject { experiment[truthiness, falsehood][condition].call }

    context 'when the condition evaluates true' do
      let(:condition) { 1 > 0 }

      it { subject.must_match(/truth/) }
    end

    context 'when the condition evaluates false' do
      let(:condition) { 0 > 1 }

      it { subject.must_match(/cheat/) }
    end
  end
end
