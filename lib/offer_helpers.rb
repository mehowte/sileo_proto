module OfferHelpers
  def workshop(options, &block)
    content = block ? capture_html(&block) : "BRABRA"
    concat_content(partial("workshop", locals: { thumbnail: options[:thumbnail], image: options[:image], title: options[:title], content: content, index: options[:index], images_count: options[:images_count] }))
  end
end
