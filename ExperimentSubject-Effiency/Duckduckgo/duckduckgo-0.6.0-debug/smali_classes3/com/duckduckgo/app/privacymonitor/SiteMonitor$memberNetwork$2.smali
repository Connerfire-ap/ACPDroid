.class final Lcom/duckduckgo/app/privacymonitor/SiteMonitor$memberNetwork$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SiteMonitor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/privacymonitor/SiteMonitor;-><init>(Ljava/lang/String;Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;",
        "invoke"
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
.field final synthetic this$0:Lcom/duckduckgo/app/privacymonitor/SiteMonitor;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor$memberNetwork$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xf74d4305462e2bdL    # -1.3498778442286174E234

    const/4 v2, 0x3

    const-string v3, "com/duckduckgo/app/privacymonitor/SiteMonitor$memberNetwork$2"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor$memberNetwork$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/privacymonitor/SiteMonitor;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor$memberNetwork$2;->$jacocoInit()[Z

    move-result-object v0

    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor$memberNetwork$2;->this$0:Lcom/duckduckgo/app/privacymonitor/SiteMonitor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    const/4 p1, 0x2

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor$memberNetwork$2;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor$memberNetwork$2;->this$0:Lcom/duckduckgo/app/privacymonitor/SiteMonitor;

    invoke-static {v1}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->access$getTrackerNetworks$p(Lcom/duckduckgo/app/privacymonitor/SiteMonitor;)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    move-result-object v1

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor$memberNetwork$2;->this$0:Lcom/duckduckgo/app/privacymonitor/SiteMonitor;

    invoke-virtual {v2}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->network(Ljava/lang/String;)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    move-result-object v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor$memberNetwork$2;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor$memberNetwork$2;->invoke()Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
