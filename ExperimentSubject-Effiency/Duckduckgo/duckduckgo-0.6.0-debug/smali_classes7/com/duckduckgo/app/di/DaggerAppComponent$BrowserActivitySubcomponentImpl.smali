.class final Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/duckduckgo/app/di/ActivityBindingModule_BrowserActivity$BrowserActivitySubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/di/DaggerAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BrowserActivitySubcomponentImpl"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4aba6373a8e7d33cL    # -4.512695189336072E-52

    const/16 v2, 0x12

    const-string v3, "com/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lcom/duckduckgo/app/di/DaggerAppComponent;Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;)V
    .locals 2
    .param p2, "builder"    # Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "builder"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 238
    iput-object p1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method synthetic constructor <init>(Lcom/duckduckgo/app/di/DaggerAppComponent;Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;Lcom/duckduckgo/app/di/DaggerAppComponent$1;)V
    .locals 3
    .param p1, "x0"    # Lcom/duckduckgo/app/di/DaggerAppComponent;
    .param p2, "x1"    # Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;
    .param p3, "x2"    # Lcom/duckduckgo/app/di/DaggerAppComponent$1;

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;-><init>(Lcom/duckduckgo/app/di/DaggerAppComponent;Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;)V

    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getBrowserWebViewClient()Lcom/duckduckgo/app/browser/BrowserWebViewClient;
    .locals 5

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 245
    new-instance v1, Lcom/duckduckgo/app/browser/BrowserWebViewClient;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 246
    invoke-direct {p0}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->getDuckDuckGoRequestRewriter()Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;

    move-result-object v2

    iget-object v4, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;

    invoke-static {v4}, Lcom/duckduckgo/app/di/DaggerAppComponent;->access$700(Lcom/duckduckgo/app/di/DaggerAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;

    invoke-direct {v1, v2, v4}, Lcom/duckduckgo/app/browser/BrowserWebViewClient;-><init>(Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;Lcom/duckduckgo/app/trackerdetection/TrackerDetector;)V

    .line 245
    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getDuckDuckGoRequestRewriter()Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 241
    new-instance v1, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;

    new-instance v2, Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;

    invoke-direct {v2}, Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;-><init>()V

    invoke-direct {v1, v2}, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;-><init>(Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;)V

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method private getQueryUrlConverter()Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 250
    new-instance v1, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;

    invoke-direct {p0}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->getDuckDuckGoRequestRewriter()Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;-><init>(Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;)V

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getViewModelFactory()Lcom/duckduckgo/app/global/ViewModelFactory;
    .locals 11

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 254
    new-instance v9, Lcom/duckduckgo/app/global/ViewModelFactory;

    const/4 v1, 0x5

    const/4 v10, 0x1

    aput-boolean v10, v0, v1

    .line 255
    invoke-direct {p0}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->getQueryUrlConverter()Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;

    move-result-object v2

    new-instance v3, Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;

    invoke-direct {v3}, Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;-><init>()V

    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;

    const/4 v4, 0x6

    aput-boolean v10, v0, v4

    .line 257
    invoke-static {v1}, Lcom/duckduckgo/app/di/DaggerAppComponent;->access$800(Lcom/duckduckgo/app/di/DaggerAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;

    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;

    const/4 v5, 0x7

    aput-boolean v10, v0, v5

    .line 258
    invoke-static {v1}, Lcom/duckduckgo/app/di/DaggerAppComponent;->access$900(Lcom/duckduckgo/app/di/DaggerAppComponent;)Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;

    move-result-object v5

    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;

    const/16 v6, 0x8

    aput-boolean v10, v0, v6

    .line 259
    invoke-static {v1}, Lcom/duckduckgo/app/di/DaggerAppComponent;->access$1000(Lcom/duckduckgo/app/di/DaggerAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;

    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;

    const/16 v7, 0x9

    aput-boolean v10, v0, v7

    .line 260
    invoke-static {v1}, Lcom/duckduckgo/app/di/DaggerAppComponent;->access$1100(Lcom/duckduckgo/app/di/DaggerAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;

    const/16 v8, 0xa

    aput-boolean v10, v0, v8

    .line 261
    invoke-static {v1}, Lcom/duckduckgo/app/di/DaggerAppComponent;->access$1200(Lcom/duckduckgo/app/di/DaggerAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/Context;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/duckduckgo/app/global/ViewModelFactory;-><init>(Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;Landroid/content/Context;)V

    .line 254
    const/16 v1, 0xb

    aput-boolean v10, v0, v1

    return-object v9
.end method

.method private injectBrowserActivity(Lcom/duckduckgo/app/browser/BrowserActivity;)Lcom/duckduckgo/app/browser/BrowserActivity;
    .locals 3
    .param p1, "instance"    # Lcom/duckduckgo/app/browser/BrowserActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 270
    invoke-direct {p0}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->getBrowserWebViewClient()Lcom/duckduckgo/app/browser/BrowserWebViewClient;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->injectWebViewClient(Lcom/duckduckgo/app/browser/BrowserActivity;Lcom/duckduckgo/app/browser/BrowserWebViewClient;)V

    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 271
    new-instance v1, Lcom/duckduckgo/app/browser/BrowserChromeClient;

    invoke-direct {v1}, Lcom/duckduckgo/app/browser/BrowserChromeClient;-><init>()V

    invoke-static {p1, v1}, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->injectWebChromeClient(Lcom/duckduckgo/app/browser/BrowserActivity;Lcom/duckduckgo/app/browser/BrowserChromeClient;)V

    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    .line 272
    invoke-direct {p0}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->getViewModelFactory()Lcom/duckduckgo/app/global/ViewModelFactory;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->injectViewModelFactory(Lcom/duckduckgo/app/browser/BrowserActivity;Lcom/duckduckgo/app/global/ViewModelFactory;)V

    .line 273
    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/duckduckgo/app/browser/BrowserActivity;)V
    .locals 3
    .param p1, "arg0"    # Lcom/duckduckgo/app/browser/BrowserActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 266
    invoke-direct {p0, p1}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->injectBrowserActivity(Lcom/duckduckgo/app/browser/BrowserActivity;)Lcom/duckduckgo/app/browser/BrowserActivity;

    .line 267
    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 236
    check-cast p1, Lcom/duckduckgo/app/browser/BrowserActivity;

    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;->inject(Lcom/duckduckgo/app/browser/BrowserActivity;)V

    const/16 p1, 0x10

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
