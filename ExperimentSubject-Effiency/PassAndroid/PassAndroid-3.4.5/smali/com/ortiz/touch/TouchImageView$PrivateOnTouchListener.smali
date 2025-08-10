.class Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ortiz/touch/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateOnTouchListener"
.end annotation


# instance fields
.field private last:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/ortiz/touch/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/ortiz/touch/TouchImageView;)V
    .locals 1

    .prologue
    .line 817
    iput-object p1, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ortiz/touch/TouchImageView;Lcom/ortiz/touch/TouchImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ortiz/touch/TouchImageView;
    .param p2, "x1"    # Lcom/ortiz/touch/TouchImageView$1;

    .prologue
    .line 817
    invoke-direct {p0, p1}, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;-><init>(Lcom/ortiz/touch/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 826
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v5}, Lcom/ortiz/touch/TouchImageView;->access$1000(Lcom/ortiz/touch/TouchImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 827
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v5}, Lcom/ortiz/touch/TouchImageView;->access$1100(Lcom/ortiz/touch/TouchImageView;)Landroid/view/GestureDetector;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 828
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 830
    .local v0, "curr":Landroid/graphics/PointF;
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->state:Lcom/ortiz/touch/TouchImageView$State;
    invoke-static {v5}, Lcom/ortiz/touch/TouchImageView;->access$600(Lcom/ortiz/touch/TouchImageView;)Lcom/ortiz/touch/TouchImageView$State;

    move-result-object v5

    sget-object v6, Lcom/ortiz/touch/TouchImageView$State;->NONE:Lcom/ortiz/touch/TouchImageView$State;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->state:Lcom/ortiz/touch/TouchImageView$State;
    invoke-static {v5}, Lcom/ortiz/touch/TouchImageView;->access$600(Lcom/ortiz/touch/TouchImageView;)Lcom/ortiz/touch/TouchImageView$State;

    move-result-object v5

    sget-object v6, Lcom/ortiz/touch/TouchImageView$State;->DRAG:Lcom/ortiz/touch/TouchImageView$State;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->state:Lcom/ortiz/touch/TouchImageView$State;
    invoke-static {v5}, Lcom/ortiz/touch/TouchImageView;->access$600(Lcom/ortiz/touch/TouchImageView;)Lcom/ortiz/touch/TouchImageView$State;

    move-result-object v5

    sget-object v6, Lcom/ortiz/touch/TouchImageView$State;->FLING:Lcom/ortiz/touch/TouchImageView$State;

    if-ne v5, v6, :cond_1

    .line 831
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 858
    :cond_1
    :goto_0
    :pswitch_0
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    iget-object v6, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;
    invoke-static {v6}, Lcom/ortiz/touch/TouchImageView;->access$1800(Lcom/ortiz/touch/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ortiz/touch/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 863
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v5}, Lcom/ortiz/touch/TouchImageView;->access$2000(Lcom/ortiz/touch/TouchImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 864
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v5}, Lcom/ortiz/touch/TouchImageView;->access$2000(Lcom/ortiz/touch/TouchImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 870
    :cond_2
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->touchImageViewListener:Lcom/ortiz/touch/TouchImageView$OnTouchImageViewListener;
    invoke-static {v5}, Lcom/ortiz/touch/TouchImageView;->access$2100(Lcom/ortiz/touch/TouchImageView;)Lcom/ortiz/touch/TouchImageView$OnTouchImageViewListener;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 871
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->touchImageViewListener:Lcom/ortiz/touch/TouchImageView$OnTouchImageViewListener;
    invoke-static {v5}, Lcom/ortiz/touch/TouchImageView;->access$2100(Lcom/ortiz/touch/TouchImageView;)Lcom/ortiz/touch/TouchImageView$OnTouchImageViewListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/ortiz/touch/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 877
    :cond_3
    const/4 v5, 0x1

    return v5

    .line 833
    :pswitch_1
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    invoke-virtual {v5, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 834
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->fling:Lcom/ortiz/touch/TouchImageView$Fling;
    invoke-static {v5}, Lcom/ortiz/touch/TouchImageView;->access$400(Lcom/ortiz/touch/TouchImageView;)Lcom/ortiz/touch/TouchImageView$Fling;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 835
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->fling:Lcom/ortiz/touch/TouchImageView$Fling;
    invoke-static {v5}, Lcom/ortiz/touch/TouchImageView;->access$400(Lcom/ortiz/touch/TouchImageView;)Lcom/ortiz/touch/TouchImageView$Fling;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ortiz/touch/TouchImageView$Fling;->cancelFling()V

    .line 836
    :cond_4
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    sget-object v6, Lcom/ortiz/touch/TouchImageView$State;->DRAG:Lcom/ortiz/touch/TouchImageView$State;

    # invokes: Lcom/ortiz/touch/TouchImageView;->setState(Lcom/ortiz/touch/TouchImageView$State;)V
    invoke-static {v5, v6}, Lcom/ortiz/touch/TouchImageView;->access$1200(Lcom/ortiz/touch/TouchImageView;Lcom/ortiz/touch/TouchImageView$State;)V

    goto :goto_0

    .line 840
    :pswitch_2
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->state:Lcom/ortiz/touch/TouchImageView$State;
    invoke-static {v5}, Lcom/ortiz/touch/TouchImageView;->access$600(Lcom/ortiz/touch/TouchImageView;)Lcom/ortiz/touch/TouchImageView$State;

    move-result-object v5

    sget-object v6, Lcom/ortiz/touch/TouchImageView$State;->DRAG:Lcom/ortiz/touch/TouchImageView$State;

    if-ne v5, v6, :cond_1

    .line 841
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v1, v5, v6

    .line 842
    .local v1, "deltaX":F
    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float v2, v5, v6

    .line 843
    .local v2, "deltaY":F
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    iget-object v6, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->viewWidth:I
    invoke-static {v6}, Lcom/ortiz/touch/TouchImageView;->access$1300(Lcom/ortiz/touch/TouchImageView;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # invokes: Lcom/ortiz/touch/TouchImageView;->getImageWidth()F
    invoke-static {v7}, Lcom/ortiz/touch/TouchImageView;->access$1400(Lcom/ortiz/touch/TouchImageView;)F

    move-result v7

    # invokes: Lcom/ortiz/touch/TouchImageView;->getFixDragTrans(FFF)F
    invoke-static {v5, v1, v6, v7}, Lcom/ortiz/touch/TouchImageView;->access$1500(Lcom/ortiz/touch/TouchImageView;FFF)F

    move-result v3

    .line 844
    .local v3, "fixTransX":F
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    iget-object v6, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->viewHeight:I
    invoke-static {v6}, Lcom/ortiz/touch/TouchImageView;->access$1600(Lcom/ortiz/touch/TouchImageView;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # invokes: Lcom/ortiz/touch/TouchImageView;->getImageHeight()F
    invoke-static {v7}, Lcom/ortiz/touch/TouchImageView;->access$1700(Lcom/ortiz/touch/TouchImageView;)F

    move-result v7

    # invokes: Lcom/ortiz/touch/TouchImageView;->getFixDragTrans(FFF)F
    invoke-static {v5, v2, v6, v7}, Lcom/ortiz/touch/TouchImageView;->access$1500(Lcom/ortiz/touch/TouchImageView;FFF)F

    move-result v4

    .line 845
    .local v4, "fixTransY":F
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;
    invoke-static {v5}, Lcom/ortiz/touch/TouchImageView;->access$1800(Lcom/ortiz/touch/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 846
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # invokes: Lcom/ortiz/touch/TouchImageView;->fixTrans()V
    invoke-static {v5}, Lcom/ortiz/touch/TouchImageView;->access$1900(Lcom/ortiz/touch/TouchImageView;)V

    .line 847
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 853
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "fixTransX":F
    .end local v4    # "fixTransY":F
    :pswitch_3
    iget-object v5, p0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    sget-object v6, Lcom/ortiz/touch/TouchImageView$State;->NONE:Lcom/ortiz/touch/TouchImageView$State;

    # invokes: Lcom/ortiz/touch/TouchImageView;->setState(Lcom/ortiz/touch/TouchImageView$State;)V
    invoke-static {v5, v6}, Lcom/ortiz/touch/TouchImageView;->access$1200(Lcom/ortiz/touch/TouchImageView;Lcom/ortiz/touch/TouchImageView$State;)V

    goto/16 :goto_0

    .line 831
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
