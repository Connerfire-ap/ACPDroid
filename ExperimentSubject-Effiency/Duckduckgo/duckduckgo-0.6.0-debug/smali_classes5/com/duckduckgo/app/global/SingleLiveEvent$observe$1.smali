.class final Lcom/duckduckgo/app/global/SingleLiveEvent$observe$1;
.super Ljava/lang/Object;
.source "SingleLiveEvent.kt"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/global/SingleLiveEvent;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u0001H\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "t",
        "onChanged",
        "(Ljava/lang/Object;)V"
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
.field final synthetic $observer:Landroid/arch/lifecycle/Observer;

.field final synthetic this$0:Lcom/duckduckgo/app/global/SingleLiveEvent;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/global/SingleLiveEvent$observe$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x59ac03a01283b628L

    const/4 v2, 0x5

    const-string v3, "com/duckduckgo/app/global/SingleLiveEvent$observe$1"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/global/SingleLiveEvent$observe$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/global/SingleLiveEvent;Landroid/arch/lifecycle/Observer;)V
    .locals 1

    invoke-static {}, Lcom/duckduckgo/app/global/SingleLiveEvent$observe$1;->$jacocoInit()[Z

    move-result-object v0

    iput-object p1, p0, Lcom/duckduckgo/app/global/SingleLiveEvent$observe$1;->this$0:Lcom/duckduckgo/app/global/SingleLiveEvent;

    iput-object p2, p0, Lcom/duckduckgo/app/global/SingleLiveEvent$observe$1;->$observer:Landroid/arch/lifecycle/Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    const/4 p2, 0x1

    aput-boolean p2, v0, p1

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/global/SingleLiveEvent$observe$1;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/duckduckgo/app/global/SingleLiveEvent$observe$1;->this$0:Lcom/duckduckgo/app/global/SingleLiveEvent;

    invoke-static {v1}, Lcom/duckduckgo/app/global/SingleLiveEvent;->access$getPending$p(Lcom/duckduckgo/app/global/SingleLiveEvent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    aput-boolean v2, v0, v2

    .line 51
    iget-object v1, p0, Lcom/duckduckgo/app/global/SingleLiveEvent$observe$1;->$observer:Landroid/arch/lifecycle/Observer;

    invoke-interface {v1, p1}, Landroid/arch/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 53
    :goto_0
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method
