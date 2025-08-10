.class final Lcom/duckduckgo/app/browser/BrowserActivity$configureWebView$3;
.super Ljava/lang/Object;
.source "BrowserActivity.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/browser/BrowserActivity;->configureWebView()V
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
        "\u0000\u001c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n \u0004*\u0004\u0018\u00010\u00080\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "actionId",
        "",
        "keyEvent",
        "Landroid/view/KeyEvent;",
        "onEditorAction"
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

    sget-object v0, Lcom/duckduckgo/app/browser/BrowserActivity$configureWebView$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x704876552761110fL    # -5.922274773035855E-233

    const/4 v2, 0x5

    const-string v3, "com/duckduckgo/app/browser/BrowserActivity$configureWebView$3"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/BrowserActivity$configureWebView$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/browser/BrowserActivity;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity$configureWebView$3;->$jacocoInit()[Z

    move-result-object v0

    iput-object p1, p0, Lcom/duckduckgo/app/browser/BrowserActivity$configureWebView$3;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "$noName_0"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity$configureWebView$3;->$jacocoInit()[Z

    move-result-object v0

    .line 211
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-ne p2, v3, :cond_0

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    const-string v3, "keyEvent"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_1

    aput-boolean v2, v0, v2

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserActivity$configureWebView$3;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    invoke-static {v1}, Lcom/duckduckgo/app/browser/BrowserActivity;->access$userEnteredQuery(Lcom/duckduckgo/app/browser/BrowserActivity;)V

    .line 213
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return v2

    .line 215
    :cond_1
    const/4 v3, 0x3

    aput-boolean v2, v0, v3

    return v1
.end method
