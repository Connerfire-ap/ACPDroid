.class public final Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;
.super Ljava/lang/Object;
.source "NetworkModule_RetrofitFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lretrofit2/Retrofit;",
        ">;"
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/duckduckgo/app/di/NetworkModule;

.field private final moshiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/squareup/moshi/Moshi;",
            ">;"
        }
    .end annotation
.end field

.field private final okHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xb49ecf8ce56cc9cL

    const/4 v2, 0x6

    const-string v3, "com/duckduckgo/app/di/NetworkModule_RetrofitFactory"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/duckduckgo/app/di/NetworkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 3
    .param p1, "module"    # Lcom/duckduckgo/app/di/NetworkModule;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "module",
            "okHttpClientProvider",
            "moshiProvider",
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duckduckgo/app/di/NetworkModule;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/squareup/moshi/Moshi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .local p2, "okHttpClientProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lokhttp3/OkHttpClient;>;"
    .local p3, "moshiProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/squareup/moshi/Moshi;>;"
    .local p4, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;->module:Lcom/duckduckgo/app/di/NetworkModule;

    .line 27
    iput-object p2, p0, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;->okHttpClientProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;->moshiProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p4, p0, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;->contextProvider:Ljavax/inject/Provider;

    .line 30
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static create(Lcom/duckduckgo/app/di/NetworkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 4
    .param p0, "module"    # Lcom/duckduckgo/app/di/NetworkModule;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "module",
            "okHttpClientProvider",
            "moshiProvider",
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duckduckgo/app/di/NetworkModule;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/squareup/moshi/Moshi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation

    .local p1, "okHttpClientProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lokhttp3/OkHttpClient;>;"
    .local p2, "moshiProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/squareup/moshi/Moshi;>;"
    .local p3, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    new-instance v1, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;-><init>(Lcom/duckduckgo/app/di/NetworkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;->get()Lretrofit2/Retrofit;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public get()Lretrofit2/Retrofit;
    .locals 6

    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;->module:Lcom/duckduckgo/app/di/NetworkModule;

    iget-object v2, p0, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;->okHttpClientProvider:Ljavax/inject/Provider;

    const/4 v3, 0x1

    aput-boolean v3, v0, v3

    .line 35
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/OkHttpClient;

    iget-object v4, p0, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;->moshiProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/moshi/Moshi;

    iget-object v5, p0, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v1, v2, v4, v5}, Lcom/duckduckgo/app/di/NetworkModule;->retrofit(Lokhttp3/OkHttpClient;Lcom/squareup/moshi/Moshi;Landroid/content/Context;)Lretrofit2/Retrofit;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 34
    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Retrofit;

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    return-object v1
.end method
