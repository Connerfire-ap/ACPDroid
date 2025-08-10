.class public final Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;
.super Ljava/lang/Object;
.source "DuckDuckGoUrlDetector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;",
        "",
        "()V",
        "isDuckDuckGoUrl",
        "",
        "uri",
        "Landroid/net/Uri;",
        "uriString",
        "",
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

    sget-object v0, Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2cc605b902dddd60L    # -8.466783820448363E92

    const/4 v2, 0x5

    const-string v3, "com/duckduckgo/app/browser/DuckDuckGoUrlDetector"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public final isDuckDuckGoUrl(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    return v2

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "duckduckgo.com"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v1, v0, v1

    return v2
.end method

.method public final isDuckDuckGoUrl(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uriString"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-boolean v1, v0, v3

    return v2

    .line 34
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;->isDuckDuckGoUrl(Landroid/net/Uri;)Z

    move-result v2

    const/4 v3, 0x3

    aput-boolean v1, v0, v3

    return v2
.end method
