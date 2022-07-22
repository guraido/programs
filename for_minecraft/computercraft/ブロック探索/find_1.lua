--概要：長方形型の閉じられた二次元平面空間限定でチェスト探索可能なプログラム
--注意点：turtle以外では実行できません

flag=0 --この変数に格納されてる値によって次右に曲がるか左に曲がるか決める

while true do
    a,b=turtle.inspect()
    if a==true then
        if b["name"]=="minecraft:chest" then
            print("found")
            break
        else
            if flag==0 then
                turtle.turnLeft()
            else
                turtle.turnRight()
            end
            if turtle.detect()==true then
                turtle.turnLeft()
                turtle.turnLeft()
                flag=(flag+1)%2
            end
            turtle.forward()
            if flag==0 then
                turtle.turnLeft()
                flag=1
            else
                turtle.turnRight()
                flag=0
            end
        end
    else
        turtle.forward()
    end
end
