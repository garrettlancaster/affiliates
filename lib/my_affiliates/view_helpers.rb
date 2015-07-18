module Affiliates
  module ViewHelpers
    # {
    #   dsfb: "http://www.amazon.com/gp/product/1449361323/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1449361323&linkCode=as2&tag=datascieforst-20&linkId=QCVCOJP5V2DXFLJE",
    #   itdm: "http://www.amazon.com/gp/product/0321321367/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0321321367&linkCode=as2&tag=datascieforst-20&linkId=DX65YMWEKDECLOVF",
    #   pdswr: "http://www.amazon.com/gp/product/1617291560/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1617291560&linkCode=as2&tag=datascieforst-20&linkId=5BMCKSFJK5BXRSIF"
    # }

    def data_science_for_business
      title = "Data Science for Business"
      url   = "http://www.amazon.com/gp/product/1449361323/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1449361323&linkCode=as2&tag=datascieforst-20&linkId=QCVCOJP5V2DXFLJE"
      image = affiliate_imagify(url, 
        "http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=1449361323&Format=_SL250_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=datascieforst-20",
        "http://ir-na.amazon-adsystem.com/e/ir?t=datascieforst-20&l=as2&o=1&a=1449361323"
      )
      structify_affiliate(title, url, image)
    end

    def introduction_to_data_mining
      title = "Introduction to Data Mining"
      url   = "http://www.amazon.com/gp/product/0321321367/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0321321367&linkCode=as2&tag=datascieforst-20&linkId=DX65YMWEKDECLOVF"
      image = affiliate_imagify(url, 
        "http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=0321321367&Format=_SL250_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=datascieforst-20",
        "http://ir-na.amazon-adsystem.com/e/ir?t=datascieforst-20&l=as2&o=1&a=0321321367"
      )

      structify_affiliate(title, url, image)
    end

    def practical_data_science_with_r
      title = "Practical Data Science with R"
      url   = "http://www.amazon.com/gp/product/1617291560/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1617291560&linkCode=as2&tag=datascieforst-20&linkId=5BMCKSFJK5BXRSIF"
      image = affiliate_imagify(url,
        "http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=1617291560&Format=_SL250_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=datascieforst-20",
        "http://ir-na.amazon-adsystem.com/e/ir?t=datascieforst-20&l=as2&o=1&a=1617291560"
      )

      structify_affiliate(title, url, image)
    end

    def affiliate_imagify(url, image, weird_pixel_image)
      <<-HTML
        <a target=_blank href='#{url}'>
          <img border="0" src="#{image}">
        </a>
        <img alt=""
             border="0"
             height="1"
             src="#{weird_pixel_image}"
             style="border:none !important; margin:0px !important;"
             width="1"/>
      HTML
    end

    def envisioning_information
      title = "Envisioning Information"
      url = "https://www.amazon.com/gp/product/0961392118/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0961392118&linkCode=as2&tag=datascieforst-20&linkId=TMW7J2NSBQ646J72"
      structify_affiliate(title, url)
    end

    def the_visual_display_of_quantitative_information
      title = "The Visual Display of Quantitative Information"
      url = "https://www.amazon.com/gp/product/0961392142/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0961392142&linkCode=as2&tag=datascieforst-20&linkId=G7YIDMMNXG5QOS6F"
      structify_affiliate(title, url)
    end

    def visual_explanations
      title = "Visual Explanations: Images and Quantities, Evidence and Narrative"
      url = "https://www.amazon.com/gp/product/0961392126/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0961392126&linkCode=as2&tag=datascieforst-20&linkId=GT2YQRT4PNVLUHD2"
      structify_affiliate(title, url)
    end
    
    def structify_affiliate(title, url, image_link='no image provided')
      OpenStruct.new(
        url: url,
        link: link_to(title, url, target: :_blank),
        image_link: image_link.html_safe
      )
    end
  end
end