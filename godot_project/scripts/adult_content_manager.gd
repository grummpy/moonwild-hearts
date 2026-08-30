extends Node
## AdultContentManager — content ratings, consent, privacy
enum ContentRating { NUDE_SOCIAL, EROTIC_ROMANCE, PRIVATE_INTIMACY }
var social_nudity: bool = true
var erotic_romance: bool = true
var private_intimacy: bool = true
func can_show(rating: ContentRating) -> bool:
	match rating:
		ContentRating.NUDE_SOCIAL: return social_nudity
		ContentRating.EROTIC_ROMANCE: return erotic_romance and social_nudity
		ContentRating.PRIVATE_INTIMACY: return private_intimacy and erotic_romance
	return false
