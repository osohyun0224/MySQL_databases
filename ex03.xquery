xquery version "1.0";

declare namespace ext="http://www.altova.com/xslt-extensions";

<first_name>{
for $record in /dataset/record
	where $record/id > 990 and $record/gender = "Male"
		return $record/first_name
}</first_name>
