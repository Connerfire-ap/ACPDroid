.class final Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText$onLayout$1;
.super Ljava/lang/Object;
.source "KeyboardAwareEditText.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->onLayout(ZIIII)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
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
.field final synthetic this$0:Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText$onLayout$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4d310826eb2c6b62L    # 7.006494169272915E63

    const/4 v2, 0x3

    const-string v3, "com/duckduckgo/app/browser/omnibar/KeyboardAwareEditText$onLayout$1"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText$onLayout$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText$onLayout$1;->$jacocoInit()[Z

    move-result-object v0

    iput-object p1, p0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText$onLayout$1;->this$0:Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText$onLayout$1;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText$onLayout$1;->this$0:Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;

    invoke-static {v1}, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->showKeyboard(Landroid/view/View;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 53
    iget-object v3, p0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText$onLayout$1;->this$0:Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;

    invoke-static {v3, v1}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->access$setShowImeAfterFirstLayout$p(Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;Z)V

    .line 54
    aput-boolean v2, v0, v2

    return-void
.end method
