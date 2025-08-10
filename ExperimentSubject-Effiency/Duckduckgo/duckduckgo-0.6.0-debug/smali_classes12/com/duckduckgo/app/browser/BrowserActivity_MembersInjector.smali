.class public final Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;
.super Ljava/lang/Object;
.source "BrowserActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/duckduckgo/app/browser/BrowserActivity;",
        ">;"
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private final viewModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/global/ViewModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final webChromeClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/browser/BrowserChromeClient;",
            ">;"
        }
    .end annotation
.end field

.field private final webViewClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/browser/BrowserWebViewClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x26620e30dc06efc6L    # 8.535317870642003E-124

    const/16 v2, 0x9

    const-string v3, "com/duckduckgo/app/browser/BrowserActivity_MembersInjector"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "webViewClientProvider",
            "webChromeClientProvider",
            "viewModelFactoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/browser/BrowserWebViewClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/browser/BrowserChromeClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/global/ViewModelFactory;",
            ">;)V"
        }
    .end annotation

    .local p1, "webViewClientProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/browser/BrowserWebViewClient;>;"
    .local p2, "webChromeClientProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/browser/BrowserChromeClient;>;"
    .local p3, "viewModelFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/global/ViewModelFactory;>;"
    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->webViewClientProvider:Ljavax/inject/Provider;

    .line 20
    iput-object p2, p0, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->webChromeClientProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p3, p0, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->viewModelFactoryProvider:Ljavax/inject/Provider;

    .line 22
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "webViewClientProvider",
            "webChromeClientProvider",
            "viewModelFactoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/browser/BrowserWebViewClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/browser/BrowserChromeClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/global/ViewModelFactory;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/duckduckgo/app/browser/BrowserActivity;",
            ">;"
        }
    .end annotation

    .local p0, "webViewClientProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/browser/BrowserWebViewClient;>;"
    .local p1, "webChromeClientProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/browser/BrowserChromeClient;>;"
    .local p2, "viewModelFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/global/ViewModelFactory;>;"
    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    new-instance v1, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;

    invoke-direct {v1, p0, p1, p2}, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public static injectViewModelFactory(Lcom/duckduckgo/app/browser/BrowserActivity;Lcom/duckduckgo/app/global/ViewModelFactory;)V
    .locals 3
    .param p0, "instance"    # Lcom/duckduckgo/app/browser/BrowserActivity;
    .param p1, "viewModelFactory"    # Lcom/duckduckgo/app/global/ViewModelFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "viewModelFactory"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iput-object p1, p0, Lcom/duckduckgo/app/browser/BrowserActivity;->viewModelFactory:Lcom/duckduckgo/app/global/ViewModelFactory;

    .line 52
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static injectWebChromeClient(Lcom/duckduckgo/app/browser/BrowserActivity;Lcom/duckduckgo/app/browser/BrowserChromeClient;)V
    .locals 3
    .param p0, "instance"    # Lcom/duckduckgo/app/browser/BrowserActivity;
    .param p1, "webChromeClient"    # Lcom/duckduckgo/app/browser/BrowserChromeClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "webChromeClient"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iput-object p1, p0, Lcom/duckduckgo/app/browser/BrowserActivity;->webChromeClient:Lcom/duckduckgo/app/browser/BrowserChromeClient;

    .line 47
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static injectWebViewClient(Lcom/duckduckgo/app/browser/BrowserActivity;Lcom/duckduckgo/app/browser/BrowserWebViewClient;)V
    .locals 3
    .param p0, "instance"    # Lcom/duckduckgo/app/browser/BrowserActivity;
    .param p1, "webViewClient"    # Lcom/duckduckgo/app/browser/BrowserWebViewClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "webViewClient"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iput-object p1, p0, Lcom/duckduckgo/app/browser/BrowserActivity;->webViewClient:Lcom/duckduckgo/app/browser/BrowserWebViewClient;

    .line 42
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/duckduckgo/app/browser/BrowserActivity;)V
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

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->webViewClientProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/browser/BrowserWebViewClient;

    invoke-static {p1, v1}, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->injectWebViewClient(Lcom/duckduckgo/app/browser/BrowserActivity;Lcom/duckduckgo/app/browser/BrowserWebViewClient;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 35
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->webChromeClientProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/browser/BrowserChromeClient;

    invoke-static {p1, v1}, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->injectWebChromeClient(Lcom/duckduckgo/app/browser/BrowserActivity;Lcom/duckduckgo/app/browser/BrowserChromeClient;)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 36
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->viewModelFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/global/ViewModelFactory;

    invoke-static {p1, v1}, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->injectViewModelFactory(Lcom/duckduckgo/app/browser/BrowserActivity;Lcom/duckduckgo/app/global/ViewModelFactory;)V

    .line 37
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "instance"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    check-cast p1, Lcom/duckduckgo/app/browser/BrowserActivity;

    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/browser/BrowserActivity_MembersInjector;->injectMembers(Lcom/duckduckgo/app/browser/BrowserActivity;)V

    const/16 p1, 0x8

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
