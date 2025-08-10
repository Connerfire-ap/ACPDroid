.class public final Lcom/duckduckgo/app/global/UriString$Companion;
.super Ljava/lang/Object;
.source "UriString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/global/UriString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/duckduckgo/app/global/UriString$Companion;",
        "",
        "()V",
        "sameOrSubdomain",
        "",
        "child",
        "",
        "parent",
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

    sget-object v0, Lcom/duckduckgo/app/global/UriString$Companion;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5528a352a7b4609bL    # 1.7244620652576577E102

    const/16 v2, 0x10

    const-string v3, "com/duckduckgo/app/global/UriString$Companion"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/global/UriString$Companion;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/global/UriString$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    invoke-static {}, Lcom/duckduckgo/app/global/UriString$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Lcom/duckduckgo/app/global/UriString$Companion;-><init>()V

    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public final sameOrSubdomain(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "child"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/global/UriString$Companion;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "child"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "parent"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 24
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    aput-boolean v2, v0, v2

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/duckduckgo/app/global/UriExtensionKt;->getBaseHost(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_1

    aput-boolean v2, v0, v4

    :goto_0
    const/4 v3, 0x3

    aput-boolean v2, v0, v3

    return v1

    :cond_1
    const/4 v5, 0x4

    aput-boolean v2, v0, v5

    .line 25
    .local v3, "childHost":Ljava/lang/String;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v4, 0x5

    aput-boolean v2, v0, v4

    goto :goto_1

    :cond_2
    invoke-static {v5}, Lcom/duckduckgo/app/global/UriExtensionKt;->getBaseHost(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v4, 0x6

    aput-boolean v2, v0, v4

    :goto_1
    const/4 v4, 0x7

    aput-boolean v2, v0, v4

    return v1

    :cond_3
    const/16 v6, 0x8

    aput-boolean v2, v0, v6

    .line 26
    .local v5, "parentHost":Ljava/lang/String;
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v6, v1, v4, v7}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    :goto_2
    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/16 v4, 0xc

    aput-boolean v2, v0, v4

    :goto_3
    const/16 v4, 0xd

    aput-boolean v2, v0, v4

    return v1
.end method
