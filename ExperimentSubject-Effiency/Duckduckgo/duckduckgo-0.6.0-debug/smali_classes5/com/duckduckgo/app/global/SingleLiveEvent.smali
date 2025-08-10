.class public final Lcom/duckduckgo/app/global/SingleLiveEvent;
.super Landroid/arch/lifecycle/MutableLiveData;
.source "SingleLiveEvent.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/MutableLiveData<",
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
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0007J\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cH\u0017J\u0017\u0010\r\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00018\u0000H\u0017\u00a2\u0006\u0002\u0010\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/duckduckgo/app/global/SingleLiveEvent;",
        "T",
        "Landroid/arch/lifecycle/MutableLiveData;",
        "()V",
        "pending",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "call",
        "",
        "observe",
        "owner",
        "Landroid/arch/lifecycle/LifecycleOwner;",
        "observer",
        "Landroid/arch/lifecycle/Observer;",
        "setValue",
        "t",
        "(Ljava/lang/Object;)V",
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
.field private final pending:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/global/SingleLiveEvent;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x265eaf17a222ea6L

    const/16 v2, 0xc

    const-string v3, "com/duckduckgo/app/global/SingleLiveEvent"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/global/SingleLiveEvent;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/global/SingleLiveEvent;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    invoke-direct {p0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    .line 39
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/duckduckgo/app/global/SingleLiveEvent;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static final synthetic access$getPending$p(Lcom/duckduckgo/app/global/SingleLiveEvent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 4
    .param p0, "$this"    # Lcom/duckduckgo/app/global/SingleLiveEvent;

    invoke-static {}, Lcom/duckduckgo/app/global/SingleLiveEvent;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/duckduckgo/app/global/SingleLiveEvent;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public final call()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/global/SingleLiveEvent;->$jacocoInit()[Z

    move-result-object v0

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/global/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 68
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V
    .locals 4
    .param p1, "owner"    # Landroid/arch/lifecycle/LifecycleOwner;
    .param p2, "observer"    # Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            "Landroid/arch/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/global/SingleLiveEvent;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "owner"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "observer"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 44
    invoke-virtual {p0}, Lcom/duckduckgo/app/global/SingleLiveEvent;->hasActiveObservers()Z

    move-result v3

    if-nez v3, :cond_0

    aput-boolean v2, v0, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    aput-boolean v2, v0, v3

    .line 45
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Multiple observers registered but only one will be notified of changes."

    invoke-static {v3, v1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 49
    :goto_0
    new-instance v1, Lcom/duckduckgo/app/global/SingleLiveEvent$observe$1;

    invoke-direct {v1, p0, p2}, Lcom/duckduckgo/app/global/SingleLiveEvent$observe$1;-><init>(Lcom/duckduckgo/app/global/SingleLiveEvent;Landroid/arch/lifecycle/Observer;)V

    check-cast v1, Landroid/arch/lifecycle/Observer;

    invoke-super {p0, p1, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 54
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/global/SingleLiveEvent;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/duckduckgo/app/global/SingleLiveEvent;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 59
    invoke-super {p0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 60
    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    return-void
.end method
