.class final Lcom/duckduckgo/app/browser/BrowserActivity$configureDummyViewTouchHandler$1;
.super Ljava/lang/Object;
.source "BrowserActivity.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/browser/BrowserActivity;->configureDummyViewTouchHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "Landroid/view/MotionEvent;",
        "onTouch"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/duckduckgo/app/browser/BrowserActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/BrowserActivity$configureDummyViewTouchHandler$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x19badced3c14bed3L    # -4.490666582189549E184

    const/4 v2, 0x2

    const-string v3, "com/duckduckgo/app/browser/BrowserActivity$configureDummyViewTouchHandler$1"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/BrowserActivity$configureDummyViewTouchHandler$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/browser/BrowserActivity;)V
    .locals 1

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity$configureDummyViewTouchHandler$1;->$jacocoInit()[Z

    move-result-object v0

    iput-object p1, p0, Lcom/duckduckgo/app/browser/BrowserActivity$configureDummyViewTouchHandler$1;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    aput-boolean p1, v0, p1

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "$noName_0"    # Landroid/view/View;
    .param p2, "$noName_1"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity$configureDummyViewTouchHandler$1;->$jacocoInit()[Z

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserActivity$configureDummyViewTouchHandler$1;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    invoke-static {v1}, Lcom/duckduckgo/app/browser/BrowserActivity;->access$finishActivityAnimated(Lcom/duckduckgo/app/browser/BrowserActivity;)V

    .line 235
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return v2
.end method
