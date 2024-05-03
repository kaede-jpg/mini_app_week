module QuizzesHelper
    
    def select_comment(score)
        if score > 200
            "エクセレント！"
        elsif score < 100
            "もっと頑張ろう…"
        else
            "まあまあだね"
        end
    end

    def select_mascot(score)
        if score > 200
            "mascot_surprised.PNG"
        elsif score < 100
            "mascot_disappointed.PNG"
        else
            "mascot_default.PNG"
        end
    end

end
