require "csv"

###変数セット
arr=CSV.read('name_data.csv')
name_list=[]
count=[]
num=arr.length

###配列ソート
arr.sort!

###個数カウント
i=1 #ループ変数
j=0 #個数カウント配列用

count[j]=0 #ゼロクリア
while i < num do
   count[j] = count[j]+1
   if arr[i] != arr[i+1] then
       print arr[i]
       print count[j],"\n"
       j = j+1
       count[j]=0 #ゼロクリア  
   end 
  i=i+1
end