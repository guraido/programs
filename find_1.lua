flag=0 --この変数に格納されてる値によって次右に曲がるか左に曲がるか決める

while true do
    a,b=turtle.inspect()
    if a==true then
        if b["name"]=="minecraft:chest" then
            print("finded")
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