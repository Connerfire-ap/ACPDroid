.class Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment$3;
.super Ljava/lang/Object;
.source "IConsentPage5Fragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;

.field final synthetic val$gesture:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$gesture"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment$3;->this$0:Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment;

    iput-object p2, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment$3;->val$gesture:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/IConsentPage5Fragment$3;->val$gesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
