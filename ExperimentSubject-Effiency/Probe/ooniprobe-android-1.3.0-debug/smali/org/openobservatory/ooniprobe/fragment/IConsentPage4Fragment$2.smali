.class Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "IConsentPage4Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment$2;->this$0:Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 78
    const/16 v0, 0x78

    .line 79
    .local v0, "SWIPE_MIN_DISTANCE":I
    const/16 v1, 0xfa

    .line 80
    .local v1, "SWIPE_MAX_OFF_PATH":I
    const/16 v2, 0xc8

    .line 82
    .local v2, "SWIPE_THRESHOLD_VELOCITY":I
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x437a0000    # 250.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 83
    const/4 v3, 0x0

    return v3

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x43480000    # 200.0f

    const/high16 v5, 0x42f00000    # 120.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    .line 85
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 86
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment$2;->this$0:Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment;

    # invokes: Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment;->next()V
    invoke-static {v3}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment;->access$000(Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v3, v6

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    .line 88
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 89
    iget-object v3, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment$2;->this$0:Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment;

    # getter for: Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;
    invoke-static {v3}, Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment;->access$100(Lorg/openobservatory/ooniprobe/fragment/IConsentPage4Fragment;)Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;->getWizard()Lme/panavtec/wizard/Wizard;

    move-result-object v3

    invoke-virtual {v3}, Lme/panavtec/wizard/Wizard;->navigatePrevious()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_2
    :goto_0
    goto :goto_1

    .line 91
    :catch_0
    move-exception v3

    .line 94
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    return v3
.end method
