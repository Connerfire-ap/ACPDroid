.class public final Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$3;
.super Ljava/lang/Object;
.source "BrowserActivity.kt"

# interfaces
.implements Lcom/duckduckgo/app/browser/omnibar/OnBackKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/browser/BrowserActivity;->configureUrlInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/duckduckgo/app/browser/BrowserActivity$configureUrlInput$3",
        "Lcom/duckduckgo/app/browser/omnibar/OnBackKeyListener;",
        "onBackKey",
        "",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x1
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

    sget-object v0, Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4b88b763fa0a8cabL    # 7.575545139678596E55

    const/4 v2, 0x3

    const-string v3, "com/duckduckgo/app/browser/BrowserActivity$configureUrlInput$3"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/browser/BrowserActivity;)V
    .locals 3
    .param p1, "$outer"    # Lcom/duckduckgo/app/browser/BrowserActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$3;->$jacocoInit()[Z

    move-result-object v0

    .line 172
    iput-object p1, p0, Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$3;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onBackKey()Z
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$3;->$jacocoInit()[Z

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$3;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    sget v2, Lcom/duckduckgo/app/browser/R$id;->focusDummy:I

    invoke-virtual {v1, v2}, Lcom/duckduckgo/app/browser/BrowserActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 175
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$3;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    invoke-static {v1}, Lcom/duckduckgo/app/browser/BrowserActivity;->access$getViewModel$p(Lcom/duckduckgo/app/browser/BrowserActivity;)Lcom/duckduckgo/app/browser/BrowserViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duckduckgo/app/browser/BrowserViewModel;->userDismissedKeyboard()Z

    move-result v1

    aput-boolean v2, v0, v2

    return v1
.end method
