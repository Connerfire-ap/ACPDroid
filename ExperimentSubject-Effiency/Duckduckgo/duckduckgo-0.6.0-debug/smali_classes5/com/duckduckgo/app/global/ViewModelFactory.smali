.class public final Lcom/duckduckgo/app/global/ViewModelFactory;
.super Landroid/arch/lifecycle/ViewModelProvider$NewInstanceFactory;
.source "ViewModelFactory.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewModelFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewModelFactory.kt\ncom/duckduckgo/app/global/ViewModelFactory\n*L\n1#1,54:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B?\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J%\u0010\u0011\u001a\u0002H\u0012\"\u0008\u0008\u0000\u0010\u0012*\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00120\u0015H\u0016\u00a2\u0006\u0002\u0010\u0016R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/duckduckgo/app/global/ViewModelFactory;",
        "Landroid/arch/lifecycle/ViewModelProvider$NewInstanceFactory;",
        "queryUrlConverter",
        "Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;",
        "duckDuckGoUrlDetector",
        "Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;",
        "privacyMonitorRepository",
        "Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;",
        "privacySettingsStore",
        "Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;",
        "termsOfServiceStore",
        "Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;",
        "trackerNetworks",
        "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
        "context",
        "Landroid/content/Context;",
        "(Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;Landroid/content/Context;)V",
        "create",
        "T",
        "Landroid/arch/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;",
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
.field private final context:Landroid/content/Context;

.field private final duckDuckGoUrlDetector:Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;

.field private final privacyMonitorRepository:Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;

.field private final privacySettingsStore:Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;

.field private final queryUrlConverter:Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;

.field private final termsOfServiceStore:Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;

.field private final trackerNetworks:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/global/ViewModelFactory;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x46e268f270de028dL    # 2.987185068701556E33

    const/4 v2, 0x7

    const-string v3, "com/duckduckgo/app/global/ViewModelFactory"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/global/ViewModelFactory;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;Landroid/content/Context;)V
    .locals 3
    .param p1, "queryUrlConverter"    # Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;
    .param p2, "duckDuckGoUrlDetector"    # Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;
    .param p3, "privacyMonitorRepository"    # Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;
    .param p4, "privacySettingsStore"    # Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;
    .param p5, "termsOfServiceStore"    # Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;
    .param p6, "trackerNetworks"    # Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;
    .param p7, "context"    # Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/global/ViewModelFactory;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "queryUrlConverter"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "duckDuckGoUrlDetector"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "privacyMonitorRepository"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "privacySettingsStore"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "termsOfServiceStore"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "trackerNetworks"

    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 42
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    iput-object p1, p0, Lcom/duckduckgo/app/global/ViewModelFactory;->queryUrlConverter:Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;

    iput-object p2, p0, Lcom/duckduckgo/app/global/ViewModelFactory;->duckDuckGoUrlDetector:Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;

    iput-object p3, p0, Lcom/duckduckgo/app/global/ViewModelFactory;->privacyMonitorRepository:Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;

    iput-object p4, p0, Lcom/duckduckgo/app/global/ViewModelFactory;->privacySettingsStore:Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;

    iput-object p5, p0, Lcom/duckduckgo/app/global/ViewModelFactory;->termsOfServiceStore:Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;

    iput-object p6, p0, Lcom/duckduckgo/app/global/ViewModelFactory;->trackerNetworks:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    iput-object p7, p0, Lcom/duckduckgo/app/global/ViewModelFactory;->context:Landroid/content/Context;

    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;
    .locals 11
    .param p1, "modelClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/arch/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/global/ViewModelFactory;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "modelClass"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    move-object v1, p1

    .local v1, "$this$with":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 46
    .local v2, "$i$a$-with-ViewModelFactory$create$1":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 47
    const-class v3, Lcom/duckduckgo/app/browser/BrowserViewModel;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/duckduckgo/app/browser/BrowserViewModel;

    iget-object v5, p0, Lcom/duckduckgo/app/global/ViewModelFactory;->queryUrlConverter:Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;

    move-object v6, v5

    check-cast v6, Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;

    iget-object v7, p0, Lcom/duckduckgo/app/global/ViewModelFactory;->duckDuckGoUrlDetector:Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;

    iget-object v8, p0, Lcom/duckduckgo/app/global/ViewModelFactory;->termsOfServiceStore:Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;

    iget-object v9, p0, Lcom/duckduckgo/app/global/ViewModelFactory;->trackerNetworks:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    iget-object v10, p0, Lcom/duckduckgo/app/global/ViewModelFactory;->privacyMonitorRepository:Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/duckduckgo/app/browser/BrowserViewModel;-><init>(Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;)V

    check-cast v3, Landroid/arch/lifecycle/ViewModel;

    aput-boolean v4, v0, v4

    goto :goto_0

    .line 48
    :cond_0
    const-class v3, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;

    iget-object v5, p0, Lcom/duckduckgo/app/global/ViewModelFactory;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/duckduckgo/app/global/ViewModelFactory;->privacySettingsStore:Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;

    check-cast v6, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;

    invoke-direct {v3, v5, v6}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;-><init>(Landroid/content/Context;Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;)V

    check-cast v3, Landroid/arch/lifecycle/ViewModel;

    const/4 v5, 0x2

    aput-boolean v4, v0, v5

    .line 51
    :goto_0
    nop

    .line 45
    .end local v1    # "$this$with":Ljava/lang/Class;
    .end local v2    # "$i$a$-with-ViewModelFactory$create$1":I
    nop

    .line 52
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    return-object v3

    .line 50
    .restart local v1    # "$this$with":Ljava/lang/Class;
    .restart local v2    # "$i$a$-with-ViewModelFactory$create$1":I
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown ViewModel class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    const/4 v5, 0x3

    aput-boolean v4, v0, v5

    throw v3
.end method
