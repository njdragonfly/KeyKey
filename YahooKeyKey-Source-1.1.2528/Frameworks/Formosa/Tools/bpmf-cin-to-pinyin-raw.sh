ruby -I ../Frameworks/Formosa/Ruby/native_bopomofo UniqueChardef.rb  bpmf-ext.cin  | sort | perl -MLingua::ZH::BPMFConvert -Mutf8 -CS -n -e 'chomp; $a=$_; s/\313\207|\313\212|\313\213|\313\231//g; print $a . " " . BPMF_to_Pinyin($_) . "\n"' > raw.txt
