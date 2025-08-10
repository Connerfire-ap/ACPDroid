.class public final Lcom/duckduckgo/app/di/NetworkModule_OkHttpClientFactory;
.super Ljava/lang/Object;
.source "NetworkModule_OkHttpClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private final module:Lcom/duckduckgo/app/di/NetworkModule;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/di/NetworkModule_OkHttpClientFactory;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3e3e11eae3d09a49L    # -6.016312883702916E8

    const/4 v2, 0x6

    const-string v3, "com/duckduckgo/app/di/NetworkModule_OkHttpClientFactory"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/di/NetworkModule_OkHttpClientFactory;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/duckduckgo/app/di/NetworkModule;)V
    .locals 3
    .param p1, "module"    # Lcom/duckduckgo/app/di/NetworkModule;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule_OkHttpClientFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/duckduckgo/app/di/NetworkModule_OkHttpClientFactory;->module:Lcom/duckduckgo/app/di/NetworkModule;

    .line 13
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static create(Lcom/duckduckgo/app/di/NetworkModule;)Ldagger/internal/Factory;
    .locals 4
    .param p0, "module"    # Lcom/duckduckgo/app/di/NetworkModule;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duckduckgo/app/di/NetworkModule;",
            ")",
            "Ldagger/internal/Factory<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule_OkHttpClientFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    new-instance v1, Lcom/duckduckgo/app/di/NetworkModule_OkHttpClientFactory;

    invoke-direct {v1, p0}, Lcom/duckduckgo/app/di/NetworkModule_OkHttpClientFactory;-><init>(Lcom/duckduckgo/app/di/NetworkModule;)V

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule_OkHttpClientFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/duckduckgo/app/di/NetworkModule_OkHttpClientFactory;->get()Lokhttp3/OkHttpClient;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public get()Lokhttp3/OkHttpClient;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule_OkHttpClientFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/duckduckgo/app/di/NetworkModule_OkHttpClientFactory;->module:Lcom/duckduckgo/app/di/NetworkModule;

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    .line 18
    invoke-virtual {v1}, Lcom/duckduckgo/app/di/NetworkModule;->okHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    const/4 v3, 0x2

    aput-boolean v2, v0, v3

    .line 17
    const-string v3, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v1, v3}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/OkHttpClient;

    const/4 v3, 0x3

    aput-boolean v2, v0, v3

    return-object v1
.end method
