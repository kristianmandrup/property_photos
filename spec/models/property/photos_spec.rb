require 'spec_helper'

describe Property::Photos do
  subject { property }

  let(:property) { create :property }

  it 'should have a gallery' do
    expect(subject.gallery).to be_a Property::Gallery
  end

  context 'gallery' do
    subject { gallery }

    let(:gallery) { property.gallery }

    it 'should have no pictures' do
      expect(gallery.pictures).to be_empty        
    end

    context 'add 2 photos' do
      before do
        gallery.pictures << create(:picture, gallery: gallery)
      end

      it 'should have many pictures' do
        expect(gallery.pictures).to_not be_empty        
      end
    end
  end
end