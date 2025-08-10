.class Lcom/ortiz/touch/TouchImageView$Fling;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ortiz/touch/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Fling"
.end annotation


# instance fields
.field currX:I

.field currY:I

.field scroller:Lcom/ortiz/touch/TouchImageView$CompatScroller;

.field final synthetic this$0:Lcom/ortiz/touch/TouchImageView;


# direct methods
.method constructor <init>(Lcom/ortiz/touch/TouchImageView;II)V
    .locals 9
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/ortiz/touch/TouchImageView$Fling;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1112
    sget-object v0, Lcom/ortiz/touch/TouchImageView$State;->FLING:Lcom/ortiz/touch/TouchImageView$State;

    # invokes: Lcom/ortiz/touch/TouchImageView;->setState(Lcom/ortiz/touch/TouchImageView$State;)V
    invoke-static {p1, v0}, Lcom/ortiz/touch/TouchImageView;->access$1200(Lcom/ortiz/touch/TouchImageView;Lcom/ortiz/touch/TouchImageView$State;)V

    .line 1113
    new-instance v0, Lcom/ortiz/touch/TouchImageView$CompatScroller;

    # getter for: Lcom/ortiz/touch/TouchImageView;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/ortiz/touch/TouchImageView;->access$2600(Lcom/ortiz/touch/TouchImageView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/ortiz/touch/TouchImageView$CompatScroller;-><init>(Lcom/ortiz/touch/TouchImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView$Fling;->scroller:Lcom/ortiz/touch/TouchImageView$CompatScroller;

    .line 1114
    # getter for: Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;
    invoke-static {p1}, Lcom/ortiz/touch/TouchImageView;->access$1800(Lcom/ortiz/touch/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    # getter for: Lcom/ortiz/touch/TouchImageView;->m:[F
    invoke-static {p1}, Lcom/ortiz/touch/TouchImageView;->access$2700(Lcom/ortiz/touch/TouchImageView;)[F

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1116
    # getter for: Lcom/ortiz/touch/TouchImageView;->m:[F
    invoke-static {p1}, Lcom/ortiz/touch/TouchImageView;->access$2700(Lcom/ortiz/touch/TouchImageView;)[F

    move-result-object v0

    const/4 v3, 0x2

    aget v0, v0, v3

    float-to-int v1, v0

    .line 1117
    .local v1, "startX":I
    # getter for: Lcom/ortiz/touch/TouchImageView;->m:[F
    invoke-static {p1}, Lcom/ortiz/touch/TouchImageView;->access$2700(Lcom/ortiz/touch/TouchImageView;)[F

    move-result-object v0

    const/4 v3, 0x5

    aget v0, v0, v3

    float-to-int v2, v0

    .line 1120
    .local v2, "startY":I
    # invokes: Lcom/ortiz/touch/TouchImageView;->getImageWidth()F
    invoke-static {p1}, Lcom/ortiz/touch/TouchImageView;->access$1400(Lcom/ortiz/touch/TouchImageView;)F

    move-result v0

    # getter for: Lcom/ortiz/touch/TouchImageView;->viewWidth:I
    invoke-static {p1}, Lcom/ortiz/touch/TouchImageView;->access$1300(Lcom/ortiz/touch/TouchImageView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 1121
    # getter for: Lcom/ortiz/touch/TouchImageView;->viewWidth:I
    invoke-static {p1}, Lcom/ortiz/touch/TouchImageView;->access$1300(Lcom/ortiz/touch/TouchImageView;)I

    move-result v0

    # invokes: Lcom/ortiz/touch/TouchImageView;->getImageWidth()F
    invoke-static {p1}, Lcom/ortiz/touch/TouchImageView;->access$1400(Lcom/ortiz/touch/TouchImageView;)F

    move-result v3

    float-to-int v3, v3

    sub-int v5, v0, v3

    .line 1122
    .local v5, "minX":I
    const/4 v6, 0x0

    .line 1128
    .local v6, "maxX":I
    :goto_0
    # invokes: Lcom/ortiz/touch/TouchImageView;->getImageHeight()F
    invoke-static {p1}, Lcom/ortiz/touch/TouchImageView;->access$1700(Lcom/ortiz/touch/TouchImageView;)F

    move-result v0

    # getter for: Lcom/ortiz/touch/TouchImageView;->viewHeight:I
    invoke-static {p1}, Lcom/ortiz/touch/TouchImageView;->access$1600(Lcom/ortiz/touch/TouchImageView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 1129
    # getter for: Lcom/ortiz/touch/TouchImageView;->viewHeight:I
    invoke-static {p1}, Lcom/ortiz/touch/TouchImageView;->access$1600(Lcom/ortiz/touch/TouchImageView;)I

    move-result v0

    # invokes: Lcom/ortiz/touch/TouchImageView;->getImageHeight()F
    invoke-static {p1}, Lcom/ortiz/touch/TouchImageView;->access$1700(Lcom/ortiz/touch/TouchImageView;)F

    move-result v3

    float-to-int v3, v3

    sub-int v7, v0, v3

    .line 1130
    .local v7, "minY":I
    const/4 v8, 0x0

    .line 1136
    .local v8, "maxY":I
    :goto_1
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$Fling;->scroller:Lcom/ortiz/touch/TouchImageView$CompatScroller;

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/ortiz/touch/TouchImageView$CompatScroller;->fling(IIIIIIII)V

    .line 1138
    iput v1, p0, Lcom/ortiz/touch/TouchImageView$Fling;->currX:I

    .line 1139
    iput v2, p0, Lcom/ortiz/touch/TouchImageView$Fling;->currY:I

    .line 1140
    return-void

    .line 1125
    .end local v5    # "minX":I
    .end local v6    # "maxX":I
    .end local v7    # "minY":I
    .end local v8    # "maxY":I
    :cond_0
    move v6, v1

    .restart local v6    # "maxX":I
    move v5, v1

    .restart local v5    # "minX":I
    goto :goto_0

    .line 1133
    :cond_1
    move v8, v2

    .restart local v8    # "maxY":I
    move v7, v2

    .restart local v7    # "minY":I
    goto :goto_1
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$Fling;->scroller:Lcom/ortiz/touch/TouchImageView$CompatScroller;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$Fling;->this$0:Lcom/ortiz/touch/TouchImageView;

    sget-object v1, Lcom/ortiz/touch/TouchImageView$State;->NONE:Lcom/ortiz/touch/TouchImageView$State;

    # invokes: Lcom/ortiz/touch/TouchImageView;->setState(Lcom/ortiz/touch/TouchImageView$State;)V
    invoke-static {v0, v1}, Lcom/ortiz/touch/TouchImageView;->access$1200(Lcom/ortiz/touch/TouchImageView;Lcom/ortiz/touch/TouchImageView$State;)V

    .line 1145
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$Fling;->scroller:Lcom/ortiz/touch/TouchImageView$CompatScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ortiz/touch/TouchImageView$CompatScroller;->forceFinished(Z)V

    .line 1147
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 1156
    iget-object v4, p0, Lcom/ortiz/touch/TouchImageView$Fling;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->touchImageViewListener:Lcom/ortiz/touch/TouchImageView$OnTouchImageViewListener;
    invoke-static {v4}, Lcom/ortiz/touch/TouchImageView;->access$2100(Lcom/ortiz/touch/TouchImageView;)Lcom/ortiz/touch/TouchImageView$OnTouchImageViewListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1157
    iget-object v4, p0, Lcom/ortiz/touch/TouchImageView$Fling;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->touchImageViewListener:Lcom/ortiz/touch/TouchImageView$OnTouchImageViewListener;
    invoke-static {v4}, Lcom/ortiz/touch/TouchImageView;->access$2100(Lcom/ortiz/touch/TouchImageView;)Lcom/ortiz/touch/TouchImageView$OnTouchImageViewListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/ortiz/touch/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 1160
    :cond_0
    iget-object v4, p0, Lcom/ortiz/touch/TouchImageView$Fling;->scroller:Lcom/ortiz/touch/TouchImageView$CompatScroller;

    invoke-virtual {v4}, Lcom/ortiz/touch/TouchImageView$CompatScroller;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1161
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/ortiz/touch/TouchImageView$Fling;->scroller:Lcom/ortiz/touch/TouchImageView$CompatScroller;

    .line 1177
    :cond_1
    :goto_0
    return-void

    .line 1165
    :cond_2
    iget-object v4, p0, Lcom/ortiz/touch/TouchImageView$Fling;->scroller:Lcom/ortiz/touch/TouchImageView$CompatScroller;

    invoke-virtual {v4}, Lcom/ortiz/touch/TouchImageView$CompatScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1166
    iget-object v4, p0, Lcom/ortiz/touch/TouchImageView$Fling;->scroller:Lcom/ortiz/touch/TouchImageView$CompatScroller;

    invoke-virtual {v4}, Lcom/ortiz/touch/TouchImageView$CompatScroller;->getCurrX()I

    move-result v0

    .line 1167
    .local v0, "newX":I
    iget-object v4, p0, Lcom/ortiz/touch/TouchImageView$Fling;->scroller:Lcom/ortiz/touch/TouchImageView$CompatScroller;

    invoke-virtual {v4}, Lcom/ortiz/touch/TouchImageView$CompatScroller;->getCurrY()I

    move-result v1

    .line 1168
    .local v1, "newY":I
    iget v4, p0, Lcom/ortiz/touch/TouchImageView$Fling;->currX:I

    sub-int v2, v0, v4

    .line 1169
    .local v2, "transX":I
    iget v4, p0, Lcom/ortiz/touch/TouchImageView$Fling;->currY:I

    sub-int v3, v1, v4

    .line 1170
    .local v3, "transY":I
    iput v0, p0, Lcom/ortiz/touch/TouchImageView$Fling;->currX:I

    .line 1171
    iput v1, p0, Lcom/ortiz/touch/TouchImageView$Fling;->currY:I

    .line 1172
    iget-object v4, p0, Lcom/ortiz/touch/TouchImageView$Fling;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;
    invoke-static {v4}, Lcom/ortiz/touch/TouchImageView;->access$1800(Lcom/ortiz/touch/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v4

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1173
    iget-object v4, p0, Lcom/ortiz/touch/TouchImageView$Fling;->this$0:Lcom/ortiz/touch/TouchImageView;

    # invokes: Lcom/ortiz/touch/TouchImageView;->fixTrans()V
    invoke-static {v4}, Lcom/ortiz/touch/TouchImageView;->access$1900(Lcom/ortiz/touch/TouchImageView;)V

    .line 1174
    iget-object v4, p0, Lcom/ortiz/touch/TouchImageView$Fling;->this$0:Lcom/ortiz/touch/TouchImageView;

    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$Fling;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;
    invoke-static {v5}, Lcom/ortiz/touch/TouchImageView;->access$1800(Lcom/ortiz/touch/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ortiz/touch/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1175
    iget-object v4, p0, Lcom/ortiz/touch/TouchImageView$Fling;->this$0:Lcom/ortiz/touch/TouchImageView;

    # invokes: Lcom/ortiz/touch/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V
    invoke-static {v4, p0}, Lcom/ortiz/touch/TouchImageView;->access$500(Lcom/ortiz/touch/TouchImageView;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
