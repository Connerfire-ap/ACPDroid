.class public final Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;
.super Ljava/lang/Object;
.source "PrivacyMonitorRepository.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;",
        "",
        "()V",
        "privacyMonitor",
        "Landroid/arch/lifecycle/MutableLiveData;",
        "Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;",
        "getPrivacyMonitor",
        "()Landroid/arch/lifecycle/MutableLiveData;",
        "setPrivacyMonitor",
        "(Landroid/arch/lifecycle/MutableLiveData;)V",
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
.field public privacyMonitor:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1c4f5d3335061179L    # -1.607255106980998E172

    const/4 v2, 0x5

    const-string v3, "com/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public final getPrivacyMonitor()Landroid/arch/lifecycle/MutableLiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;->privacyMonitor:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    const-string v3, "privacyMonitor"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    aput-boolean v2, v0, v2

    :goto_0
    const/4 v3, 0x2

    aput-boolean v2, v0, v3

    return-object v1
.end method

.method public final setPrivacyMonitor(Landroid/arch/lifecycle/MutableLiveData;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;->privacyMonitor:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
