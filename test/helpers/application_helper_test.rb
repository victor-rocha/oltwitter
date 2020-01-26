require 'test_helper'
require 'json'

class ApplicationHelperTest < ActionView::TestCase
  test "replaces urls on tweet" do
    tweet = { "created_at"=>"Sun Jan 26 00:13:51 +0000 2020", "id"=>1221224697498566662, "id_str"=>"1221224697498566662", "full_text"=>"Mesmo com mulheres dominando o setor, marcas pagam mais para homens em posts patrocinados na redes sociais - https://t.co/6xxuESFWcW https://t.co/mSc536ffp9", "truncated"=>false, "display_text_range"=>[0, 132], "entities"=>{"hashtags"=>[], "symbols"=>[], "user_mentions"=>[], "urls"=>[{"url"=>"https://t.co/6xxuESFWcW", "expanded_url"=>"https://no.b9.com.br/3aAwieB", "display_url"=>"no.b9.com.br/3aAwieB", "indices"=>[109, 132]}], "media"=>[{"id"=>1221224695627800576, "id_str"=>"1221224695627800576", "indices"=>[133, 156], "media_url"=>"http://pbs.twimg.com/media/EPKpY-3UYAAl1Tr.jpg", "media_url_https"=>"https://pbs.twimg.com/media/EPKpY-3UYAAl1Tr.jpg", "url"=>"https://t.co/mSc536ffp9", "display_url"=>"pic.twitter.com/mSc536ffp9", "expanded_url"=>"https://twitter.com/brains9/status/1221224697498566662/photo/1", "type"=>"photo", "sizes"=>{"thumb"=>{"w"=>150, "h"=>150, "resize"=>"crop"}, "small"=>{"w"=>680, "h"=>383, "resize"=>"fit"}, "medium"=>{"w"=>1200, "h"=>675, "resize"=>"fit"}, "large"=>{"w"=>1280, "h"=>720, "resize"=>"fit"}}, "features"=>{"orig"=>{"faces"=>[{"x"=>823, "y"=>168, "h"=>102, "w"=>102}]}, "small"=>{"faces"=>[{"x"=>437, "y"=>89, "h"=>54, "w"=>54}]}, "medium"=>{"faces"=>[{"x"=>771, "y"=>157, "h"=>95, "w"=>95}]}, "large"=>{"faces"=>[{"x"=>823, "y"=>168, "h"=>102, "w"=>102}]}}}]}, "extended_entities"=>{"media"=>[{"id"=>1221224695627800576, "id_str"=>"1221224695627800576", "indices"=>[133, 156], "media_url"=>"http://pbs.twimg.com/media/EPKpY-3UYAAl1Tr.jpg", "media_url_https"=>"https://pbs.twimg.com/media/EPKpY-3UYAAl1Tr.jpg", "url"=>"https://t.co/mSc536ffp9", "display_url"=>"pic.twitter.com/mSc536ffp9", "expanded_url"=>"https://twitter.com/brains9/status/1221224697498566662/photo/1", "type"=>"photo", "sizes"=>{"thumb"=>{"w"=>150, "h"=>150, "resize"=>"crop"}, "small"=>{"w"=>680, "h"=>383, "resize"=>"fit"}, "medium"=>{"w"=>1200, "h"=>675, "resize"=>"fit"}, "large"=>{"w"=>1280, "h"=>720, "resize"=>"fit"}}, "features"=>{"orig"=>{"faces"=>[{"x"=>823, "y"=>168, "h"=>102, "w"=>102}]}, "small"=>{"faces"=>[{"x"=>437, "y"=>89, "h"=>54, "w"=>54}]}, "medium"=>{"faces"=>[{"x"=>771, "y"=>157, "h"=>95, "w"=>95}]}, "large"=>{"faces"=>[{"x"=>823, "y"=>168, "h"=>102, "w"=>102}]}}}]}, "source"=>"<a href=\"http://www.brainstorm9.com.br\" rel=\"nofollow\">B9</a>", "in_reply_to_status_id"=>nil, "in_reply_to_status_id_str"=>nil, "in_reply_to_user_id"=>nil, "in_reply_to_user_id_str"=>nil, "in_reply_to_screen_name"=>nil, "user"=>{"id"=>148854179, "id_str"=>"148854179", "name"=>"B9", "screen_name"=>"brains9", "location"=>"São Paulo, BR", "description"=>"https://t.co/UqjJq3IT2S é o seu posto avançado no futuro, cobrindo a intersecção entre a criatividade, tecnologia, cultura digital, inovaç
ão e negócios.", "url"=>"https://t.co/liQAwWKfSu", "entities"=>{"url"=>{"urls"=>[{"url"=>"https://t.co/liQAwWKfSu", "expanded_url"=>"http://www.b9.com.br", "display_url"=>"b9.com.br", "indices"=>[0, 23]}]}, "description"=>{"urls"=>[{"url"=>"https://t.co/UqjJq3IT2S", "expanded_url"=>"http://B9.com.br", "display_url"=>"B9.com.br", "indices"=>[0, 23]}]}}, "protected"=>false, "followers_count"=>165992, "friends_count"=>41, "listed_count"=>2101, "created_at"=>"Thu May 27 19:49:33 +0000 2010", "favourites_count"=>1325, "utc_offset"=>nil, "time_zone"=>nil, "geo_enabled"=>false, "verified"=>true, "statuses_count"=>42497, "lang"=>nil, "contributors_enabled"=>false, "is_translator"=>false, "is_translation_enabled"=>false, "profile_background_color"=>"000000", "profile_background_image_url"=>"http://abs.twimg.com/images/themes/theme14/bg.gif", "profile_background_image_url_https"=>"https://abs.twimg.com/images/themes/theme14/bg.gif", "profile_background_tile"=>false, "profile_image_url"=>"http://pbs.twimg.com/profile_images/1145733725575102465/abQI38zs_normal.jpg", "profile_image_url_https"=>"https://pbs.twimg.com/profile_images/1145733725575102465/abQI38zs_normal.jpg", "profile_banner_url"=>"https://pbs.twimg.com/profile_banners/148854179/1494535496", "profile_link_color"=>"EA7200", "profile_sidebar_border_color"=>"000000", "profile_sidebar_fill_color"=>"000000", "profile_text_color"=>"000000", "profile_use_background_image"=>false, "has_extended_profile"=>false, "default_profile"=>false, "default_profile_image"=>false, "can_media_tag"=>true, "followed_by"=>false, "following"=>true, "follow_request_sent"=>false, "notifications"=>false, "translator_type"=>"regular"}, "geo"=>nil, "coordinates"=>nil, "place"=>nil, "contributors"=>nil, "is_quote_status"=>false, "retweet_count"=>0, "favorite_count"=>3, "favorited"=>false, "retweeted"=>false, "possibly_sensitive"=>false, "possibly_sensitive_appealable"=>false, "lang"=>"pt"}

    assert_dom_equal %{Mesmo com mulheres dominando o setor, marcas pagam mais para homens em posts patrocinados na redes sociais - <a href='https://no.b9.com.br/3aAwieB' target='_blank'>no.b9.com.br/3aAwieB</a> <a href='https://pbs.twimg.com/media/EPKpY-3UYAAl1Tr.jpg' target='_blank'>pic.twitter.com/mSc536ffp9</a>}, format_tweet(tweet)
  end

  test "adds retweet text" do
    tweet = {"created_at"=>"Sun Jan 26 08:03:00 +0000 2020", "id"=>1221342762865504256, "id_str"=>"1221342762865504256", "full_text"=>"Should have eaten the salad 🥗\n@MeowedOfficial https://t.co/gX3IsUWhjf", "truncated"=>false, "display_text_range"=>[0, 45], "entities"=>{"hashtags"=>[], "symbols"=>[], "user_mentions"=>[{"screen_name"=>"MeowedOfficial", "name"=>"Meowed", "id"=>1174276237084069888, "id_str"=>"1174276237084069888", "indices"=>[30, 45]}], "urls"=>[{"url"=>"https://t.co/gX3IsUWhjf", "expanded_url"=>"https://twitter.com/SmudgeLord/status/1215706008821157888", "display_url"=>"twitter.com/SmudgeLord/sta…", "indices"=>[46, 69]}]}, "source"=>"<a href=\"https://buffer.com\" rel=\"nofollow\">Buffer</a>", "in_reply_to_status_id"=>nil, "in_reply_to_status_id_str"=>nil, "in_reply_to_user_id"=>nil, "in_reply_to_user_id_str"=>nil, "in_reply_to_screen_name"=>nil, "user"=>{"id"=>16548023, "id_str"=>"16548023", "name"=>"9GAG", "screen_name"=>"9GAG", "location"=>"Universe", "description"=>"Go Fun The World. Get 9GAG app for the latest memes, gifs and videos: https://t.co/aMQ9pLLhWB. Contact us: 9gag@9gag.com", "url"=>"https://t.co/aMQ9pLLhWB", "entities"=>{"url"=>{"urls"=>[{"url"=>"https://t.co/aMQ9pLLhWB", "expanded_url"=>"http://9gag.com/apps", "display_url"=>"9gag.com/apps", "indices"=>[0, 23]}]}, "description"=>{"urls"=>[{"url"=>"https://t.co/aMQ9pLLhWB", "expanded_url"=>"http://9gag.com/apps", "display_url"=>"9gag.com/apps", "indices"=>[70, 93]}]}}, "protected"=>false, "followers_count"=>16235567, "friends_count"=>9, "listed_count"=>12687, "created_at"=>"Wed Oct 01 18:46:32 +0000 2008", "favourites_count"=>1653, "utc_offset"=>nil, "time_zone"=>nil, "geo_enabled"=>false, "verified"=>true, "statuses_count"=>47130, "lang"=>nil, "contributors_enabled"=>false, "is_translator"=>false, "is_translation_enabled"=>false, "profile_background_color"=>"000000", "profile_background_image_url"=>"http://abs.twimg.com/images/themes/theme2/bg.gif", "profile_background_image_url_https"=>"https://abs.twimg.com/images/themes/theme2/bg.gif", "profile_background_tile"=>true, "profile_image_url"=>"http://pbs.twimg.com/profile_images/852355177260621824/UsIvWpWX_normal.jpg", "profile_image_url_https"=>"https://pbs.twimg.com/profile_images/852355177260621824/UsIvWpWX_normal.jpg", "profile_banner_url"=>"https://pbs.twimg.com/profile_banners/16548023/1563162940", "profile_link_color"=>"0099FF", "profile_sidebar_border_color"=>"FFFFFF", "profile_sidebar_fill_color"=>"111111", "profile_text_color"=>"666666", "profile_use_background_image"=>false, "has_extended_profile"=>false, "default_profile"=>false, "default_profile_image"=>false, "can_media_tag"=>true, "followed_by"=>false, "following"=>true, "follow_request_sent"=>false, "notifications"=>false, "translator_type"=>"regular"}, "geo"=>nil, "coordinates"=>nil, "place"=>nil, "contributors"=>nil, "is_quote_status"=>true, "quoted_status_id"=>1215706008821157888, "quoted_status_id_str"=>"1215706008821157888", "quoted_status_permalink"=>{"url"=>"https://t.co/gX3IsUWhjf", "expanded"=>"https://twitter.com/SmudgeLord/status/1215706008821157888", "display"=>"twitter.com/SmudgeLord/sta…"}, "quoted_status"=>{"created_at"=>"Fri Jan 10 18:44:33 +0000 2020", "id"=>1215706008821157888, "id_str"=>"1215706008821157888", "full_text"=>"Unimpressed floofer ☁️☁️☁️ https://t.co/GuLCP89sMP", "truncated"=>false, "display_text_range"=>[0, 26], "entities"=>{"hashtags"=>[], "symbols"=>[], "user_mentions"=>[], "urls"=>[], "media"=>[{"id"=>1215706004920446977, "id_str"=>"1215706004920446977", "indices"=>[27, 50], "media_url"=>"http://pbs.twimg.com/media/EN8OK56XsAEF9WU.jpg", "media_url_https"=>"https://pbs.twimg.com/media/EN8OK56XsAEF9WU.jpg", "url"=>"https://t.co/GuLCP89sMP", "display_url"=>"pic.twitter.com/GuLCP89sMP", "expanded_url"=>"https://twitter.com/SmudgeLord/status/1215706008821157888/photo/1", "type"=>"photo", "sizes"=>{"medium"=>{"w"=>943, "h"=>943, "resize"=>"fit"}, "thumb"=>{"w"=>150, "h"=>150, "resize"=>"crop"}, "large"=>{"w"=>943, "h"=>943, "resize"=>"fit"}, "small"=>{"w"=>680, "h"=>680, "resize"=>"fit"}}, "features"=>{"medium"=>{"faces"=>[{"x"=>170, "y"=>83, "h"=>327, "w"=>327}]}, "orig"=>{"faces"=>[{"x"=>170, "y"=>83, "h"=>327, "w"=>327}]}, "large"=>{"faces"=>[{"x"=>170, "y"=>83, "h"=>327, "w"=>327}]}, "small"=>{"faces"=>[{"x"=>122, "y"=>59, "h"=>235, "w"=>235}]}}}]}, "extended_entities"=>{"media"=>[{"id"=>1215706004920446977, "id_str"=>"1215706004920446977", "indices"=>[27, 50], "media_url"=>"http://pbs.twimg.com/media/EN8OK56XsAEF9WU.jpg", "media_url_https"=>"https://pbs.twimg.com/media/EN8OK56XsAEF9WU.jpg", "url"=>"https://t.co/GuLCP89sMP", "display_url"=>"pic.twitter.com/GuLCP89sMP", "expanded_url"=>"https://twitter.com/SmudgeLord/status/1215706008821157888/photo/1", "type"=>"photo", "sizes"=>{"medium"=>{"w"=>943, "h"=>943, "resize"=>"fit"}, "thumb"=>{"w"=>150, "h"=>150, "resize"=>"crop"}, "large"=>{"w"=>943, "h"=>943, "resize"=>"fit"}, "small"=>{"w"=>680, "h"=>680, "resize"=>"fit"}}, "features"=>{"medium"=>{"faces"=>[{"x"=>170, "y"=>83, "h"=>327, "w"=>327}]}, "orig"=>{"faces"=>[{"x"=>170, "y"=>83, "h"=>327, "w"=>327}]}, "large"=>{"faces"=>[{"x"=>170, "y"=>83, "h"=>327, "w"=>327}]}, "small"=>{"faces"=>[{"x"=>122, "y"=>59, "h"=>235, "w"=>235}]}}}]}, "source"=>"<a href=\"http://twitter.com/download/iphone\" rel=\"nofollow\">Twitter for iPhone</a>", "in_reply_to_status_id"=>nil, "in_reply_to_status_id_str"=>nil, "in_reply_to_user_id"=>nil, "in_reply_to_user_id_str"=>nil, "in_reply_to_screen_name"=>nil, "user"=>{"id"=>1159519094527406080, "id_str"=>"1159519094527406080", "name"=>"Smudge_Lord", "screen_name"=>"SmudgeLord", "location"=>"", "description"=>"Official twitter for the cat that hates vegetals the most #smudgethecat #womanyellingatcat #inolikevegetals #smudgelord", "url"=>"https://t.co/CL29QqRelM", "entities"=>{"url"=>{"urls"=>[{"url"=>"https://t.co/CL29QqRelM", "expanded_url"=>"http://www.smudge-lord.com", "display_url"=>"smudge-lord.com", "indices"=>[0, 23]}]}, "description"=>{"urls"=>[]}}, "protected"=>false, "followers_count"=>5354, "friends_count"=>11, "listed_count"=>8, "created_at"=>"Thu Aug 08 17:37:49 +0000 2019", "favourites_count"=>207, "utc_offset"=>nil, "time_zone"=>nil, "geo_enabled"=>false, "verified"=>false, "statuses_count"=>121, "lang"=>nil, "contributors_enabled"=>false, "is_translator"=>false, "is_translation_enabled"=>false, "profile_background_color"=>"F5F8FA", "profile_background_image_url"=>nil, "profile_background_image_url_https"=>nil, "profile_background_tile"=>false, "profile_image_url"=>"http://pbs.twimg.com/profile_images/1159519350925201408/lgjd_Phv_normal.jpg", "profile_image_url_https"=>"https://pbs.twimg.com/profile_images/1159519350925201408/lgjd_Phv_normal.jpg", "profile_banner_url"=>"https://pbs.twimg.com/profile_banners/1159519094527406080/1565288996", "profile_link_color"=>"1DA1F2", "profile_sidebar_border_color"=>"C0DEED", "profile_sidebar_fill_color"=>"DDEEF6", "profile_text_color"=>"333333", "profile_use_background_image"=>true, "has_extended_profile"=>true, "default_profile"=>true, "default_profile_image"=>false, "can_media_tag"=>true, "followed_by"=>false, "following"=>false, "follow_request_sent"=>false, "notifications"=>false, "translator_type"=>"none"}, "geo"=>nil, "coordinates"=>nil, "place"=>nil, "contributors"=>nil, "is_quote_status"=>false, "retweet_count"=>174, "favorite_count"=>755, "favorited"=>false, "retweeted"=>false, "possibly_sensitive"=>false, "possibly_sensitive_appealable"=>false, "lang"=>"en"}, "retweet_count"=>145, "favorite_count"=>589, "favorited"=>false, "retweeted"=>false, "possibly_sensitive"=>false, "possibly_sensitive_appealable"=>false, "lang"=>"en"}

    assert_dom_equal %{Should have eaten the salad 🥗<br />@MeowedOfficial <br /><br />RT @SmudgeLord Unimpressed floofer ☁️☁️☁️ <a href='https://pbs.twimg.com/media/EN8OK56XsAEF9WU.jpg' target='_blank'>pic.twitter.com/GuLCP89sMP</a>}, format_tweet(tweet)
  end

  test "links hashtags" do
    tweet = {"created_at"=>"Sun Jan 26 12:30:00 +0000 2020", "id"=>1221409953182674944, "id_str"=>"1221409953182674944", "full_text"=>"We need God’s Word: so that we can hear, amid the thousands of other words in our daily lives, that one Word that speaks to us not about things, but about life. #SundayoftheWordofGod\nhttps://t.co/jQqOkpPvg8", "truncated"=>false, "display_text_range"=>[0, 206], "entities"=>{"hashtags"=>[{"text"=>"SundayoftheWordofGod", "indices"=>[161, 182]}], "symbols"=>[], "user_mentions"=>[], "urls"=>[{"url"=>"https://t.co/jQqOkpPvg8", "expanded_url"=>"http://w2.vatican.va/content/francesco/en/homilies/2020/documents/papa-francesco_20200126_omelia-domenicadellaparoladidio.html", "display_url"=>"w2.vatican.va/content/france…", "indices"=>[183, 206]}]}, "source"=>"<a href=\"https://about.twitter.com/products/tweetdeck\" rel=\"nofollow\">TweetDeck</a>", "in_reply_to_status_id"=>nil, "in_reply_to_status_id_str"=>nil, "in_reply_to_user_id"=>nil, "in_reply_to_user_id_str"=>nil, "in_reply_to_screen_name"=>nil, "user"=>{"id"=>500704345, "id_str"=>"500704345", "name"=>"Pope Francis", "screen_name"=>"Pontifex", "location"=>"Vatican City", "description"=>"Welcome to the official Twitter page of His Holiness Pope Francis", "url"=>"https://t.co/yRhGwps83P", "entities"=>{"url"=>{"urls"=>[{"url"=>"https://t.co/yRhGwps83P", "expanded_url"=>"http://www.vaticannews.va", "display_url"=>"vaticannews.va", "indices"=>[0, 23]}]}, "description"=>{"urls"=>[]}}, "protected"=>false, "followers_count"=>18184717, "friends_count"=>8, "listed_count"=>26311, "created_at"=>"Thu Feb 23 11:38:07 +0000 2012", "favourites_count"=>0, "utc_offset"=>nil, "time_zone"=>nil, "geo_enabled"=>false, "verified"=>true, "statuses_count"=>2321, "lang"=>nil, "contributors_enabled"=>false, "is_translator"=>false, "is_translation_enabled"=>true, "profile_background_color"=>"FFFFFF", "profile_background_image_url"=>"http://abs.twimg.com/images/themes/theme1/bg.png", "profile_background_image_url_https"=>"https://abs.twimg.com/images/themes/theme1/bg.png", "profile_background_tile"=>false, "profile_image_url"=>"http://pbs.twimg.com/profile_images/507818066814590976/KNG-IkT9_normal.jpeg", "profile_image_url_https"=>"https://pbs.twimg.com/profile_images/507818066814590976/KNG-IkT9_normal.jpeg", "profile_banner_url"=>"https://pbs.twimg.com/profile_banners/500704345/1409908226", "profile_link_color"=>"0084B4", "profile_sidebar_border_color"=>"FFFFFF", "profile_sidebar_fill_color"=>"DDEEF6", "profile_text_color"=>"333333", "profile_use_background_image"=>true, "has_extended_profile"=>false, "default_profile"=>false, "default_profile_image"=>false, "can_media_tag"=>true, "followed_by"=>false, "following"=>true, "follow_request_sent"=>false, "notifications"=>false, "translator_type"=>"none"}, "geo"=>nil, "coordinates"=>nil, "place"=>nil, "contributors"=>nil, "is_quote_status"=>false, "retweet_count"=>143, "favorite_count"=>528, "favorited"=>false, "retweeted"=>false, "possibly_sensitive"=>false, "possibly_sensitive_appealable"=>false, "lang"=>"en"}

    assert_dom_equal %{We need God’s Word: so that we can hear, amid the thousands of other words in our daily lives, that one Word that speaks to us not about things, but about life. <a href='https://twitter.com/hashtag/SundayoftheWordofGod' target='_blank'>#SundayoftheWordofGod</a><br /><a href='http://w2.vatican.va/content/francesco/en/homilies/2020/documents/papa-francesco_20200126_omelia-domenicadellaparoladidio.html' target='_blank'>w2.vatican.va/content/france…</a>}, format_tweet(tweet)
  end
end