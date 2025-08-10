.class public final Lcom/duckduckgo/app/di/NetworkModule;
.super Ljava/lang/Object;
.source "NetworkModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/duckduckgo/app/di/NetworkModule;",
        "",
        "()V",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "context",
        "Landroid/content/Context;",
        "trackerListService",
        "Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;",
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


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/di/NetworkModule;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3b7d57a18c05a5a7L    # 3.8834222295435966E-22

    const/16 v2, 0x10

    const-string v3, "com/duckduckgo/app/di/NetworkModule"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/di/NetworkModule;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public final moshi()Lcom/squareup/moshi/Moshi;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    nop

    .line 49
    nop

    .line 46
    nop

    .line 48
    nop

    .line 46
    nop

    .line 47
    nop

    .line 46
    new-instance v1, Lcom/squareup/moshi/Moshi$Builder;

    invoke-direct {v1}, Lcom/squareup/moshi/Moshi$Builder;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 47
    new-instance v2, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJsonAdapter;

    invoke-direct {v2}, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJsonAdapter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/moshi/Moshi$Builder;->add(Ljava/lang/Object;)Lcom/squareup/moshi/Moshi$Builder;

    move-result-object v1

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    .line 48
    new-instance v2, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceListAdapter;

    invoke-direct {v2}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceListAdapter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/moshi/Moshi$Builder;->add(Ljava/lang/Object;)Lcom/squareup/moshi/Moshi$Builder;

    move-result-object v1

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    .line 49
    invoke-virtual {v1}, Lcom/squareup/moshi/Moshi$Builder;->build()Lcom/squareup/moshi/Moshi;

    move-result-object v1

    const-string v2, "Moshi.Builder()\n        \u2026r())\n            .build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final okHttpClient()Lokhttp3/OkHttpClient;
    .locals 5
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 41
    .local v1, "client":Lokhttp3/OkHttpClient$Builder;
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    const-string v4, "client.build()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-boolean v3, v0, v3

    return-object v2
.end method

.method public final retrofit(Lokhttp3/OkHttpClient;Lcom/squareup/moshi/Moshi;Landroid/content/Context;)Lretrofit2/Retrofit;
    .locals 4
    .param p1, "okHttpClient"    # Lokhttp3/OkHttpClient;
    .param p2, "moshi"    # Lcom/squareup/moshi/Moshi;
    .param p3, "context"    # Landroid/content/Context;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "okHttpClient"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "moshi"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 54
    nop

    .line 59
    nop

    .line 54
    nop

    .line 58
    nop

    .line 54
    nop

    .line 57
    nop

    .line 54
    nop

    .line 56
    nop

    .line 54
    nop

    .line 55
    nop

    .line 54
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const/4 v3, 0x7

    aput-boolean v2, v0, v3

    .line 55
    const v3, 0x7f0e0020

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    const/16 v3, 0x8

    aput-boolean v2, v0, v3

    .line 56
    invoke-virtual {v1, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    const/16 v3, 0x9

    aput-boolean v2, v0, v3

    .line 57
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v3

    check-cast v3, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v1, v3}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    const/16 v3, 0xa

    aput-boolean v2, v0, v3

    .line 58
    invoke-static {p2}, Lretrofit2/converter/moshi/MoshiConverterFactory;->create(Lcom/squareup/moshi/Moshi;)Lretrofit2/converter/moshi/MoshiConverterFactory;

    move-result-object v3

    check-cast v3, Lretrofit2/Converter$Factory;

    invoke-virtual {v1, v3}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    const/16 v3, 0xb

    aput-boolean v2, v0, v3

    .line 59
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    const-string v3, "Retrofit.Builder()\n     \u2026\n                .build()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xc

    aput-boolean v2, v0, v3

    return-object v1
.end method

.method public final trackerListService(Lretrofit2/Retrofit;)Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;
    .locals 4
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "retrofit"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 64
    const-class v1, Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;

    invoke-virtual {p1, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "retrofit.create(TrackerListService::class.java)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;

    const/16 v3, 0xe

    aput-boolean v2, v0, v3

    return-object v1
.end method
