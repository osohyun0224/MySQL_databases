xquery version "1.0";

declare namespace ext="http://www.altova.com/xslt-extensions";

<people_list>
{
  for $record in /dataset/record
  return
    <last_name>{data($record/last_name)}</last_name>
}
</people_list>