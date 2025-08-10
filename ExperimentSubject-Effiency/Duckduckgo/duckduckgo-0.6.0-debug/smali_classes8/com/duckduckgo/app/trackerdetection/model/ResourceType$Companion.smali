.class public final Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;
.super Ljava/lang/Object;
.source "ResourceType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/trackerdetection/model/ResourceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResourceType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceType.kt\ncom/duckduckgo/app/trackerdetection/model/ResourceType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,86:1\n10725#2,2:87\n*E\n*S KotlinDebug\n*F\n+ 1 ResourceType.kt\ncom/duckduckgo/app/trackerdetection/model/ResourceType$Companion\n*L\n82#1,2:87\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\nH\u0002J%\u0010\u000b\u001a\u00020\u000c*\u00020\u00062\u0012\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\u000e\"\u00020\nH\u0002\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;",
        "",
        "()V",
        "from",
        "Lcom/duckduckgo/app/trackerdetection/model/ResourceType;",
        "url",
        "Landroid/net/Uri;",
        "webResourceRequest",
        "Landroid/webkit/WebResourceRequest;",
        "acceptHeader",
        "",
        "hasExtension",
        "",
        "extensions",
        "",
        "(Landroid/net/Uri;[Ljava/lang/String;)Z",
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

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x24a980e094ae25b3L    # -9.980090663656956E131

    const/16 v2, 0x1e

    const-string v3, "com/duckduckgo/app/trackerdetection/model/ResourceType$Companion"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x1c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;-><init>()V

    const/16 v1, 0x1d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final from(Landroid/net/Uri;)Lcom/duckduckgo/app/trackerdetection/model/ResourceType;
    .locals 10
    .param p1, "url"    # Landroid/net/Uri;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 68
    move-object v1, p0

    check-cast v1, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;

    const-string v2, "png"

    const-string v3, "jpg"

    const-string v4, "jpeg"

    const-string v5, "webp"

    const-string v6, "svg"

    const-string v7, "gif"

    const-string v8, "bmp"

    const-string v9, "tiff"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;->hasExtension(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 69
    sget-object v1, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->IMAGE:Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    const/16 v3, 0x12

    aput-boolean v2, v0, v3

    return-object v1

    .line 71
    :cond_0
    move-object v1, p0

    check-cast v1, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;

    const-string v3, "css"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;->hasExtension(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    sget-object v1, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->CSS:Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    const/16 v3, 0x13

    aput-boolean v2, v0, v3

    return-object v1

    .line 74
    :cond_1
    move-object v1, p0

    check-cast v1, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;

    const-string v3, "js"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;->hasExtension(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    sget-object v1, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->SCRIPT:Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    const/16 v3, 0x14

    aput-boolean v2, v0, v3

    return-object v1

    .line 77
    :cond_2
    const/4 v1, 0x0

    const/16 v3, 0x15

    aput-boolean v2, v0, v3

    return-object v1
.end method

.method private final from(Ljava/lang/String;)Lcom/duckduckgo/app/trackerdetection/model/ResourceType;
    .locals 7
    .param p1, "acceptHeader"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "image/"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->IMAGE:Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    const/16 v3, 0xe

    aput-boolean v2, v0, v3

    return-object v1

    .line 58
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v6, "/css"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v1, v6, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    sget-object v1, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->CSS:Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    const/16 v3, 0xf

    aput-boolean v2, v0, v3

    return-object v1

    .line 61
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v6, "javascript"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v1, v6, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    sget-object v1, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->SCRIPT:Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    const/16 v3, 0x10

    aput-boolean v2, v0, v3

    return-object v1

    .line 64
    :cond_2
    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    return-object v5
.end method

.method private final varargs hasExtension(Landroid/net/Uri;[Ljava/lang/String;)Z
    .locals 13
    .param p1, "$this$hasExtension"    # Landroid/net/Uri;
    .param p2, "extensions"    # [Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "baseUrl":Ljava/lang/String;
    move-object v2, p2

    .local v2, "$this$any$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 87
    .local v3, "$i$f$any":I
    array-length v4, v2

    const/16 v5, 0x16

    const/4 v6, 0x1

    aput-boolean v6, v0, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_1

    aget-object v8, v2, v7

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "$i$a$-any-ResourceType$Companion$hasExtension$1":I
    const/16 v11, 0x17

    aput-boolean v6, v0, v11

    .line 82
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x2e

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11, v6}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-any-ResourceType$Companion$hasExtension$1":I
    if-eqz v9, :cond_0

    const/16 v4, 0x18

    aput-boolean v6, v0, v4

    const/4 v5, 0x1

    goto :goto_1

    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x19

    aput-boolean v6, v0, v8

    goto :goto_0

    .line 88
    :cond_1
    const/16 v4, 0x1a

    aput-boolean v6, v0, v4

    .end local v2    # "$this$any$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$any":I
    :goto_1
    const/16 v2, 0x1b

    aput-boolean v6, v0, v2

    return v5
.end method


# virtual methods
.method public final from(Landroid/webkit/WebResourceRequest;)Lcom/duckduckgo/app/trackerdetection/model/ResourceType;
    .locals 8
    .param p1, "webResourceRequest"    # Landroid/webkit/WebResourceRequest;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "webResourceRequest"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    .line 39
    .local v2, "headerResult":Lcom/duckduckgo/app/trackerdetection/model/ResourceType;
    move-object v3, v1

    check-cast v3, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    .local v3, "urlResult":Lcom/duckduckgo/app/trackerdetection/model/ResourceType;
    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    .line 41
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v1, "Accept"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-boolean v5, v0, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    aput-boolean v5, v0, v4

    .line 42
    .local v1, "acceptHeader":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    const/4 v4, 0x3

    aput-boolean v5, v0, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    aput-boolean v5, v0, v4

    .line 43
    move-object v4, p0

    check-cast v4, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;

    invoke-direct {v4, v1}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;->from(Ljava/lang/String;)Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    move-result-object v2

    const/4 v4, 0x5

    aput-boolean v5, v0, v4

    .line 46
    :goto_1
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    .line 47
    .local v4, "url":Landroid/net/Uri;
    if-nez v4, :cond_2

    const/4 v6, 0x6

    aput-boolean v5, v0, v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x7

    aput-boolean v5, v0, v6

    .line 48
    move-object v6, p0

    check-cast v6, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;

    invoke-direct {v6, v4}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;->from(Landroid/net/Uri;)Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    move-result-object v3

    const/16 v6, 0x8

    aput-boolean v5, v0, v6

    .line 51
    :goto_2
    if-eqz v2, :cond_3

    const/16 v6, 0x9

    aput-boolean v5, v0, v6

    move-object v6, v2

    goto :goto_3

    :cond_3
    const/16 v6, 0xa

    aput-boolean v5, v0, v6

    move-object v6, v3

    :goto_3
    if-eqz v6, :cond_4

    const/16 v7, 0xb

    aput-boolean v5, v0, v7

    goto :goto_4

    :cond_4
    sget-object v6, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->UNKNOWN:Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    const/16 v7, 0xc

    aput-boolean v5, v0, v7

    :goto_4
    const/16 v7, 0xd

    aput-boolean v5, v0, v7

    return-object v6
.end method
