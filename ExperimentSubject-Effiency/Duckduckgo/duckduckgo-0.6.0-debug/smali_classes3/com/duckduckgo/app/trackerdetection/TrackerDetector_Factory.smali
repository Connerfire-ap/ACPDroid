.class public final Lcom/duckduckgo/app/trackerdetection/TrackerDetector_Factory;
.super Ljava/lang/Object;
.source "TrackerDetector_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/duckduckgo/app/trackerdetection/TrackerDetector;",
        ">;"
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private final networkTrackersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector_Factory;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x79760bd84028b41dL

    const/4 v2, 0x4

    const-string v3, "com/duckduckgo/app/trackerdetection/TrackerDetector_Factory"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector_Factory;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "networkTrackersProvider",
            "settingsProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;",
            ">;)V"
        }
    .end annotation

    .local p1, "networkTrackersProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;>;"
    .local p2, "settingsProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;>;"
    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector_Factory;->networkTrackersProvider:Ljavax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector_Factory;->settingsProvider:Ljavax/inject/Provider;

    .line 19
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "networkTrackersProvider",
            "settingsProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/duckduckgo/app/trackerdetection/TrackerDetector;",
            ">;"
        }
    .end annotation

    .local p0, "networkTrackersProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;>;"
    .local p1, "settingsProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;>;"
    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    new-instance v1, Lcom/duckduckgo/app/trackerdetection/TrackerDetector_Factory;

    invoke-direct {v1, p0, p1}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public get()Lcom/duckduckgo/app/trackerdetection/TrackerDetector;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    new-instance v1, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;

    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector_Factory;->networkTrackersProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    iget-object v3, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector_Factory;->settingsProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;

    invoke-direct {v1, v2, v3}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;-><init>(Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;)V

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector_Factory;->get()Lcom/duckduckgo/app/trackerdetection/TrackerDetector;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
