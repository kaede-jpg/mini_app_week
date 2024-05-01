module QuizzesHelper
    def make_comment(score)
        if score > 200
            "エクセレント！"
        elsif score < 100
            "もっと頑張ろう…"
        else
            "まあまあだね"
        end
    end
end
