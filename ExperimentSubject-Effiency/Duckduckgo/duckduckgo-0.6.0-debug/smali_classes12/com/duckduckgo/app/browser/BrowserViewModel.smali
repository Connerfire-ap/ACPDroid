.class public final Lcom/duckduckgo/app/browser/BrowserViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "BrowserViewModel.kt"

# interfaces
.implements Lcom/duckduckgo/app/browser/WebViewClientListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;,
        Lcom/duckduckgo/app/browser/BrowserViewModel$NavigationCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrowserViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrowserViewModel.kt\ncom/duckduckgo/app/browser/BrowserViewModel\n*L\n1#1,162:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002:\u000278B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u001e\u001a\u00020\u001bH\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020 H\u0016J\u0008\u0010\"\u001a\u00020 H\u0002J\u0016\u0010#\u001a\u00020 2\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%J\u000e\u0010&\u001a\u00020 2\u0006\u0010\'\u001a\u00020\u000fJ\u0008\u0010(\u001a\u00020 H\u0016J\u0010\u0010)\u001a\u00020 2\u0006\u0010*\u001a\u00020+H\u0016J\u0016\u0010,\u001a\u00020 2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200J\u0010\u00101\u001a\u00020 2\u0006\u00102\u001a\u000203H\u0016J\u0012\u00104\u001a\u00020 2\u0008\u00105\u001a\u0004\u0018\u00010\u000fH\u0016J\u0006\u00106\u001a\u00020%R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u00069"
    }
    d2 = {
        "Lcom/duckduckgo/app/browser/BrowserViewModel;",
        "Lcom/duckduckgo/app/browser/WebViewClientListener;",
        "Landroid/arch/lifecycle/ViewModel;",
        "queryUrlConverter",
        "Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;",
        "duckDuckGoUrlDetector",
        "Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;",
        "termsOfServiceStore",
        "Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;",
        "trackerNetworks",
        "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
        "privacyMonitorRepository",
        "Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;",
        "(Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;)V",
        "lastQuery",
        "",
        "navigation",
        "Lcom/duckduckgo/app/global/SingleLiveEvent;",
        "Lcom/duckduckgo/app/browser/BrowserViewModel$NavigationCommand;",
        "getNavigation",
        "()Lcom/duckduckgo/app/global/SingleLiveEvent;",
        "query",
        "getQuery",
        "siteMonitor",
        "Lcom/duckduckgo/app/privacymonitor/SiteMonitor;",
        "viewState",
        "Landroid/arch/lifecycle/MutableLiveData;",
        "Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;",
        "getViewState",
        "()Landroid/arch/lifecycle/MutableLiveData;",
        "currentViewState",
        "loadingFinished",
        "",
        "loadingStarted",
        "onSiteMonitorChanged",
        "onUrlInputStateChanged",
        "hasFocus",
        "",
        "onUserSubmittedQuery",
        "input",
        "pageHasHttpResources",
        "progressChanged",
        "newProgress",
        "",
        "registerWebViewListener",
        "browserWebViewClient",
        "Lcom/duckduckgo/app/browser/BrowserWebViewClient;",
        "browserChromeClient",
        "Lcom/duckduckgo/app/browser/BrowserChromeClient;",
        "trackerDetected",
        "event",
        "Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;",
        "urlChanged",
        "url",
        "userDismissedKeyboard",
        "NavigationCommand",
        "ViewState",
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
.field private final duckDuckGoUrlDetector:Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;

.field private lastQuery:Ljava/lang/String;

.field private final navigation:Lcom/duckduckgo/app/global/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/duckduckgo/app/global/SingleLiveEvent<",
            "Lcom/duckduckgo/app/browser/BrowserViewModel$NavigationCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final privacyMonitorRepository:Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;

.field private final query:Lcom/duckduckgo/app/global/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/duckduckgo/app/global/SingleLiveEvent<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final queryUrlConverter:Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;

.field private siteMonitor:Lcom/duckduckgo/app/privacymonitor/SiteMonitor;

.field private final termsOfServiceStore:Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;

.field private final trackerNetworks:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

.field private final viewState:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x71594856d94c7a43L    # -4.360863946325191E-238

    const/16 v2, 0x42

    const-string v3, "com/duckduckgo/app/browser/BrowserViewModel"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;)V
    .locals 21
    .param p1, "queryUrlConverter"    # Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;
    .param p2, "duckDuckGoUrlDetector"    # Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;
    .param p3, "termsOfServiceStore"    # Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;
    .param p4, "trackerNetworks"    # Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;
    .param p5, "privacyMonitorRepository"    # Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoInit()[Z

    move-result-object v6

    const-string v7, "queryUrlConverter"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "duckDuckGoUrlDetector"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "termsOfServiceStore"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "trackerNetworks"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "privacyMonitorRepository"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const/16 v7, 0x3b

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 39
    invoke-direct/range {p0 .. p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    iput-object v1, v0, Lcom/duckduckgo/app/browser/BrowserViewModel;->queryUrlConverter:Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;

    iput-object v2, v0, Lcom/duckduckgo/app/browser/BrowserViewModel;->duckDuckGoUrlDetector:Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;

    iput-object v3, v0, Lcom/duckduckgo/app/browser/BrowserViewModel;->termsOfServiceStore:Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;

    iput-object v4, v0, Lcom/duckduckgo/app/browser/BrowserViewModel;->trackerNetworks:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    iput-object v5, v0, Lcom/duckduckgo/app/browser/BrowserViewModel;->privacyMonitorRepository:Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;

    const/16 v7, 0x3c

    aput-boolean v8, v6, v7

    .line 53
    new-instance v7, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v7}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v7, v0, Lcom/duckduckgo/app/browser/BrowserViewModel;->viewState:Landroid/arch/lifecycle/MutableLiveData;

    const/16 v9, 0x3d

    aput-boolean v8, v6, v9

    .line 54
    new-instance v9, Lcom/duckduckgo/app/global/SingleLiveEvent;

    invoke-direct {v9}, Lcom/duckduckgo/app/global/SingleLiveEvent;-><init>()V

    iput-object v9, v0, Lcom/duckduckgo/app/browser/BrowserViewModel;->query:Lcom/duckduckgo/app/global/SingleLiveEvent;

    const/16 v9, 0x3e

    aput-boolean v8, v6, v9

    .line 55
    new-instance v9, Lcom/duckduckgo/app/global/SingleLiveEvent;

    invoke-direct {v9}, Lcom/duckduckgo/app/global/SingleLiveEvent;-><init>()V

    iput-object v9, v0, Lcom/duckduckgo/app/browser/BrowserViewModel;->navigation:Lcom/duckduckgo/app/global/SingleLiveEvent;

    .line 65
    const/16 v9, 0x3f

    aput-boolean v8, v6, v9

    .line 66
    new-instance v9, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xff

    const/16 v20, 0x0

    move-object v10, v9

    invoke-direct/range {v10 .. v20}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;-><init>(ZILjava/lang/String;ZZZLjava/lang/Long;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, v9}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/16 v7, 0x40

    aput-boolean v8, v6, v7

    .line 67
    new-instance v7, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v7}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    invoke-virtual {v5, v7}, Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;->setPrivacyMonitor(Landroid/arch/lifecycle/MutableLiveData;)V

    .line 68
    const/16 v7, 0x41

    aput-boolean v8, v6, v7

    return-void
.end method

.method private final currentViewState()Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->viewState:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v3, 0x2c

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/16 v3, 0x2d

    aput-boolean v2, v0, v3

    :goto_0
    check-cast v1, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    const/16 v3, 0x2e

    aput-boolean v2, v0, v3

    return-object v1
.end method

.method private final onSiteMonitorChanged()V
    .locals 14

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->viewState:Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p0}, Lcom/duckduckgo/app/browser/BrowserViewModel;->currentViewState()Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v2

    iget-object v3, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->siteMonitor:Lcom/duckduckgo/app/privacymonitor/SiteMonitor;

    const/4 v13, 0x1

    if-eqz v3, :cond_0

    check-cast v3, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

    invoke-static {v3}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->getImprovedGrade(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x28

    aput-boolean v13, v0, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x29

    aput-boolean v13, v0, v4

    :goto_0
    move-object v9, v3

    const/4 v10, 0x0

    const/16 v11, 0xbf

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v12}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->copy$default(Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;ZILjava/lang/String;ZZZLjava/lang/Long;ZILjava/lang/Object;)Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/16 v1, 0x2a

    aput-boolean v13, v0, v1

    .line 136
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->privacyMonitorRepository:Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;

    invoke-virtual {v1}, Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;->getPrivacyMonitor()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v1

    iget-object v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->siteMonitor:Lcom/duckduckgo/app/privacymonitor/SiteMonitor;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 137
    const/16 v1, 0x2b

    aput-boolean v13, v0, v1

    return-void
.end method


# virtual methods
.method public final getNavigation()Lcom/duckduckgo/app/global/SingleLiveEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/duckduckgo/app/global/SingleLiveEvent<",
            "Lcom/duckduckgo/app/browser/BrowserViewModel$NavigationCommand;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->navigation:Lcom/duckduckgo/app/global/SingleLiveEvent;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final getQuery()Lcom/duckduckgo/app/global/SingleLiveEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/duckduckgo/app/global/SingleLiveEvent<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->query:Lcom/duckduckgo/app/global/SingleLiveEvent;

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public final getViewState()Landroid/arch/lifecycle/MutableLiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->viewState:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public loadingFinished()V
    .locals 14

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 105
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Loading finished"

    invoke-static {v2, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 106
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->viewState:Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p0}, Lcom/duckduckgo/app/browser/BrowserViewModel;->currentViewState()Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfe

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->copy$default(Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;ZILjava/lang/String;ZZZLjava/lang/Long;ZILjava/lang/Object;)Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 107
    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    return-void
.end method

.method public loadingStarted()V
    .locals 14

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 98
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Loading started"

    invoke-static {v2, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 99
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->viewState:Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p0}, Lcom/duckduckgo/app/browser/BrowserViewModel;->currentViewState()Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfe

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->copy$default(Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;ZILjava/lang/String;ZZZLjava/lang/Long;ZILjava/lang/Object;)Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 100
    const/4 v1, 0x0

    check-cast v1, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;

    iput-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->siteMonitor:Lcom/duckduckgo/app/privacymonitor/SiteMonitor;

    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    .line 101
    invoke-direct {p0}, Lcom/duckduckgo/app/browser/BrowserViewModel;->onSiteMonitorChanged()V

    .line 102
    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    return-void
.end method

.method public final onUrlInputStateChanged(Ljava/lang/String;Z)V
    .locals 16
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "hasFocus"    # Z

    move-object/from16 v0, p1

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoInit()[Z

    move-result-object v1

    const-string v2, "query"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x2f

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 142
    const/4 v2, 0x0

    if-nez p2, :cond_0

    const/16 v4, 0x30

    aput-boolean v3, v1, v4

    goto :goto_1

    :cond_0
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/16 v4, 0x31

    aput-boolean v3, v1, v4

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x32

    aput-boolean v3, v1, v4

    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    const/16 v4, 0x33

    aput-boolean v3, v1, v4

    :goto_1
    const/16 v4, 0x35

    aput-boolean v3, v1, v4

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    const/16 v2, 0x34

    aput-boolean v3, v1, v2

    const/4 v10, 0x1

    :goto_2
    const/16 v2, 0x36

    aput-boolean v3, v1, v2

    .line 143
    .local v10, "showClearButton":Z
    move-object/from16 v2, p0

    iget-object v15, v2, Lcom/duckduckgo/app/browser/BrowserViewModel;->viewState:Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct/range {p0 .. p0}, Lcom/duckduckgo/app/browser/BrowserViewModel;->currentViewState()Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xd7

    const/4 v14, 0x0

    move/from16 v8, p2

    invoke-static/range {v4 .. v14}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->copy$default(Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;ZILjava/lang/String;ZZZLjava/lang/Long;ZILjava/lang/Object;)Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 144
    const/16 v4, 0x37

    aput-boolean v3, v1, v4

    return-void
.end method

.method public final onUserSubmittedQuery(Ljava/lang/String;)V
    .locals 14
    .param p1, "input"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "input"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 77
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->queryUrlConverter:Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;

    invoke-interface {v1, p1}, Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;->isWebUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->lastQuery:Ljava/lang/String;

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    .line 83
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->query:Lcom/duckduckgo/app/global/SingleLiveEvent;

    iget-object v3, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->queryUrlConverter:Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;

    invoke-interface {v3, p1}, Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;->convertUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/duckduckgo/app/global/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 85
    :cond_1
    iput-object p1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->lastQuery:Ljava/lang/String;

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    .line 86
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->query:Lcom/duckduckgo/app/global/SingleLiveEvent;

    iget-object v3, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->queryUrlConverter:Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;

    invoke-interface {v3, p1}, Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;->convertQueryToUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/duckduckgo/app/global/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    .line 87
    :goto_0
    nop

    .line 89
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->viewState:Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p0}, Lcom/duckduckgo/app/browser/BrowserViewModel;->currentViewState()Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xdf

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->copy$default(Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;ZILjava/lang/String;ZZZLjava/lang/Long;ZILjava/lang/Object;)Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 90
    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    return-void
.end method

.method public pageHasHttpResources()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->siteMonitor:Lcom/duckduckgo/app/privacymonitor/SiteMonitor;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->setHasHttpResources(Z)V

    const/16 v1, 0x25

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x26

    aput-boolean v2, v0, v1

    .line 131
    :goto_0
    invoke-direct {p0}, Lcom/duckduckgo/app/browser/BrowserViewModel;->onSiteMonitorChanged()V

    .line 132
    const/16 v1, 0x27

    aput-boolean v2, v0, v1

    return-void
.end method

.method public progressChanged(I)V
    .locals 14
    .param p1, "newProgress"    # I

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading in progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 94
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->viewState:Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p0}, Lcom/duckduckgo/app/browser/BrowserViewModel;->currentViewState()Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfd

    const/4 v13, 0x0

    move v5, p1

    invoke-static/range {v3 .. v13}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->copy$default(Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;ZILjava/lang/String;ZZZLjava/lang/Long;ZILjava/lang/Object;)Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 95
    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    return-void
.end method

.method public final registerWebViewListener(Lcom/duckduckgo/app/browser/BrowserWebViewClient;Lcom/duckduckgo/app/browser/BrowserChromeClient;)V
    .locals 3
    .param p1, "browserWebViewClient"    # Lcom/duckduckgo/app/browser/BrowserWebViewClient;
    .param p2, "browserChromeClient"    # Lcom/duckduckgo/app/browser/BrowserChromeClient;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "browserWebViewClient"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "browserChromeClient"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 71
    move-object v1, p0

    check-cast v1, Lcom/duckduckgo/app/browser/WebViewClientListener;

    invoke-virtual {p1, v1}, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->setWebViewClientListener(Lcom/duckduckgo/app/browser/WebViewClientListener;)V

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 72
    move-object v1, p0

    check-cast v1, Lcom/duckduckgo/app/browser/WebViewClientListener;

    invoke-virtual {p2, v1}, Lcom/duckduckgo/app/browser/BrowserChromeClient;->setWebViewClientListener(Lcom/duckduckgo/app/browser/WebViewClientListener;)V

    .line 73
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void
.end method

.method public trackerDetected(Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "event"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x21

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 125
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->siteMonitor:Lcom/duckduckgo/app/privacymonitor/SiteMonitor;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->trackerDetected(Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;)V

    const/16 v1, 0x22

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x23

    aput-boolean v2, v0, v1

    .line 126
    :goto_0
    invoke-direct {p0}, Lcom/duckduckgo/app/browser/BrowserViewModel;->onSiteMonitorChanged()V

    .line 127
    const/16 v1, 0x24

    aput-boolean v2, v0, v1

    return-void
.end method

.method public urlChanged(Ljava/lang/String;)V
    .locals 26
    .param p1, "url"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoInit()[Z

    move-result-object v13

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Url changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x14

    const/4 v14, 0x1

    aput-boolean v14, v13, v1

    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/duckduckgo/app/browser/BrowserViewModel;->currentViewState()Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x6b

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v11}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->copy$default(Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;ZILjava/lang/String;ZZZLjava/lang/Long;ZILjava/lang/Object;)Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v1

    .local v1, "newViewState":Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;
    const/16 v2, 0x15

    aput-boolean v14, v13, v2

    .line 113
    iget-object v2, v0, Lcom/duckduckgo/app/browser/BrowserViewModel;->duckDuckGoUrlDetector:Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;

    invoke-virtual {v2, v12}, Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;->isDuckDuckGoUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x16

    aput-boolean v14, v13, v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x17

    aput-boolean v14, v13, v2

    .line 114
    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v2, v0, Lcom/duckduckgo/app/browser/BrowserViewModel;->lastQuery:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfb

    const/16 v25, 0x0

    move-object v15, v1

    move-object/from16 v18, v2

    invoke-static/range {v15 .. v25}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->copy$default(Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;ZILjava/lang/String;ZZZLjava/lang/Long;ZILjava/lang/Object;)Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v1

    const/16 v2, 0x18

    aput-boolean v14, v13, v2

    .line 116
    :goto_0
    iget-object v2, v0, Lcom/duckduckgo/app/browser/BrowserViewModel;->viewState:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v2, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 117
    if-nez v12, :cond_1

    const/16 v2, 0x19

    aput-boolean v14, v13, v2

    goto :goto_2

    :cond_1
    const/16 v2, 0x1a

    aput-boolean v14, v13, v2

    .line 118
    iget-object v2, v0, Lcom/duckduckgo/app/browser/BrowserViewModel;->termsOfServiceStore:Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;

    invoke-interface {v2, v12}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;->retrieveTerms(Ljava/lang/String;)Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v3, 0x1b

    aput-boolean v14, v13, v3

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f

    const/4 v11, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v3, 0x1c

    aput-boolean v14, v13, v3

    :goto_1
    const/16 v3, 0x1d

    aput-boolean v14, v13, v3

    .line 119
    .local v2, "terms":Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;
    new-instance v3, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;

    iget-object v4, v0, Lcom/duckduckgo/app/browser/BrowserViewModel;->trackerNetworks:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    invoke-direct {v3, v12, v2, v4}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;-><init>(Ljava/lang/String;Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;)V

    iput-object v3, v0, Lcom/duckduckgo/app/browser/BrowserViewModel;->siteMonitor:Lcom/duckduckgo/app/privacymonitor/SiteMonitor;

    const/16 v3, 0x1e

    aput-boolean v14, v13, v3

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/duckduckgo/app/browser/BrowserViewModel;->onSiteMonitorChanged()V

    const/16 v3, 0x1f

    aput-boolean v14, v13, v3

    .line 122
    .end local v2    # "terms":Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;
    :goto_2
    const/16 v2, 0x20

    aput-boolean v14, v13, v2

    return-void
.end method

.method public final userDismissedKeyboard()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 152
    invoke-direct {p0}, Lcom/duckduckgo/app/browser/BrowserViewModel;->currentViewState()Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->getBrowserShowing()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/16 v1, 0x38

    aput-boolean v2, v0, v1

    .line 153
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel;->navigation:Lcom/duckduckgo/app/global/SingleLiveEvent;

    sget-object v3, Lcom/duckduckgo/app/browser/BrowserViewModel$NavigationCommand;->LANDING_PAGE:Lcom/duckduckgo/app/browser/BrowserViewModel$NavigationCommand;

    invoke-virtual {v1, v3}, Lcom/duckduckgo/app/global/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 154
    const/16 v1, 0x39

    aput-boolean v2, v0, v1

    return v2

    .line 156
    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0x3a

    aput-boolean v2, v0, v3

    return v1
.end method
