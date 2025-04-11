SELECT EngagementID, ContentID, ContentType, ProductID,
	UPPER(REPLACE(ContentType, 'SocialMedia', 'Social Media')) AS ContentType,
     SUBSTRING_INDEX(ViewsClicksCombined, '-', 1) AS Views,
     SUBSTRING_INDEX(ViewsClicksCombined, '-', -1) AS Clicks,
    Likes,
    DATE_FORMAT(EngagementDate, '%d.%m.%Y') AS EngagementDate FROM engagement_data
    WHERE ContentType != 'Newsletter';