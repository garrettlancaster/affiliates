module Affiliates
  module ViewHelpers
    # {
    #   dsfb: "http://www.amazon.com/gp/product/1449361323/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1449361323&linkCode=as2&tag=datascieforst-20&linkId=QCVCOJP5V2DXFLJE",
    #   itdm: "http://www.amazon.com/gp/product/0321321367/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0321321367&linkCode=as2&tag=datascieforst-20&linkId=DX65YMWEKDECLOVF",
    #   pdswr: "http://www.amazon.com/gp/product/1617291560/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1617291560&linkCode=as2&tag=datascieforst-20&linkId=5BMCKSFJK5BXRSIF"
    # }

    def data_science_for_business
      url = "http://www.amazon.com/gp/product/1449361323/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1449361323&linkCode=as2&tag=datascieforst-20&linkId=QCVCOJP5V2DXFLJE"
      OpenStruct.new(
        url: url,
        link: link_to("Data Science for Business", url),
        image_link: capture_haml(url) { |url|
          <<-HAML
          %a{:href => affiliate_urls[:dsfb]}
            %img{:border => "0", :src => "http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=1449361323&Format=_SL250_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=datascieforst-20"}/
          %img{:alt => "", :border => "0", :height => "1", :src => "http://ir-na.amazon-adsystem.com/e/ir?t=datascieforst-20&l=as2&o=1&a=1449361323", :style => "border:none !important; margin:0px !important;", :width => "1"}/
          HAML
        }
      )
    end
  end
end