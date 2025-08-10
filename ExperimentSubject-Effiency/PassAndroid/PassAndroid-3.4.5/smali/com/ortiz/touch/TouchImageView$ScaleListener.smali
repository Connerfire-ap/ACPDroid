.class Lcom/ortiz/touch/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ortiz/touch/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ortiz/touch/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/ortiz/touch/TouchImageView;)V
    .locals 0

    .prologue
    .line 886
    iput-object p1, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ortiz/touch/TouchImageView;Lcom/ortiz/touch/TouchImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ortiz/touch/TouchImageView;
    .param p2, "x1"    # Lcom/ortiz/touch/TouchImageView$1;

    .prologue
    .line 886
    invoke-direct {p0, p1}, Lcom/ortiz/touch/TouchImageView$ScaleListener;-><init>(Lcom/ortiz/touch/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v6, 0x1

    .line 895
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    # invokes: Lcom/ortiz/touch/TouchImageView;->scaleImage(DFFZ)V
    invoke-static/range {v1 .. v6}, Lcom/ortiz/touch/TouchImageView;->access$2200(Lcom/ortiz/touch/TouchImageView;DFFZ)V

    .line 900
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->touchImageViewListener:Lcom/ortiz/touch/TouchImageView$OnTouchImageViewListener;
    invoke-static {v0}, Lcom/ortiz/touch/TouchImageView;->access$2100(Lcom/ortiz/touch/TouchImageView;)Lcom/ortiz/touch/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->touchImageViewListener:Lcom/ortiz/touch/TouchImageView$OnTouchImageViewListener;
    invoke-static {v0}, Lcom/ortiz/touch/TouchImageView;->access$2100(Lcom/ortiz/touch/TouchImageView;)Lcom/ortiz/touch/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ortiz/touch/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 903
    :cond_0
    return v6
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 889
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    sget-object v1, Lcom/ortiz/touch/TouchImageView$State;->ZOOM:Lcom/ortiz/touch/TouchImageView$State;

    # invokes: Lcom/ortiz/touch/TouchImageView;->setState(Lcom/ortiz/touch/TouchImageView$State;)V
    invoke-static {v0, v1}, Lcom/ortiz/touch/TouchImageView;->access$1200(Lcom/ortiz/touch/TouchImageView;Lcom/ortiz/touch/TouchImageView$State;)V

    .line 890
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 7
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 908
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 909
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    sget-object v3, Lcom/ortiz/touch/TouchImageView$State;->NONE:Lcom/ortiz/touch/TouchImageView$State;

    # invokes: Lcom/ortiz/touch/TouchImageView;->setState(Lcom/ortiz/touch/TouchImageView$State;)V
    invoke-static {v1, v3}, Lcom/ortiz/touch/TouchImageView;->access$1200(Lcom/ortiz/touch/TouchImageView;Lcom/ortiz/touch/TouchImageView$State;)V

    .line 910
    const/4 v6, 0x0

    .line 911
    .local v6, "animateToZoomBoundary":Z
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->normalizedScale:F
    invoke-static {v1}, Lcom/ortiz/touch/TouchImageView;->access$700(Lcom/ortiz/touch/TouchImageView;)F

    move-result v2

    .line 912
    .local v2, "targetZoom":F
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->normalizedScale:F
    invoke-static {v1}, Lcom/ortiz/touch/TouchImageView;->access$700(Lcom/ortiz/touch/TouchImageView;)F

    move-result v1

    iget-object v3, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->maxScale:F
    invoke-static {v3}, Lcom/ortiz/touch/TouchImageView;->access$900(Lcom/ortiz/touch/TouchImageView;)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 913
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->maxScale:F
    invoke-static {v1}, Lcom/ortiz/touch/TouchImageView;->access$900(Lcom/ortiz/touch/TouchImageView;)F

    move-result v2

    .line 914
    const/4 v6, 0x1

    .line 921
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 922
    new-instance v0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    iget-object v3, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->viewWidth:I
    invoke-static {v3}, Lcom/ortiz/touch/TouchImageView;->access$1300(Lcom/ortiz/touch/TouchImageView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->viewHeight:I
    invoke-static {v4}, Lcom/ortiz/touch/TouchImageView;->access$1600(Lcom/ortiz/touch/TouchImageView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;-><init>(Lcom/ortiz/touch/TouchImageView;FFFZ)V

    .line 923
    .local v0, "doubleTap":Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # invokes: Lcom/ortiz/touch/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lcom/ortiz/touch/TouchImageView;->access$500(Lcom/ortiz/touch/TouchImageView;Ljava/lang/Runnable;)V

    .line 925
    .end local v0    # "doubleTap":Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;
    :cond_1
    return-void

    .line 916
    :cond_2
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->normalizedScale:F
    invoke-static {v1}, Lcom/ortiz/touch/TouchImageView;->access$700(Lcom/ortiz/touch/TouchImageView;)F

    move-result v1

    iget-object v3, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->minScale:F
    invoke-static {v3}, Lcom/ortiz/touch/TouchImageView;->access$800(Lcom/ortiz/touch/TouchImageView;)F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    # getter for: Lcom/ortiz/touch/TouchImageView;->minScale:F
    invoke-static {v1}, Lcom/ortiz/touch/TouchImageView;->access$800(Lcom/ortiz/touch/TouchImageView;)F

    move-result v2

    .line 918
    const/4 v6, 0x1

    goto :goto_0
.end method
