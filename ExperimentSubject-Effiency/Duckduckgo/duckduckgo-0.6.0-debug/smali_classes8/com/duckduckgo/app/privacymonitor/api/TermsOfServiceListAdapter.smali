.class public final Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceListAdapter;
.super Ljava/lang/Object;
.source "TermsOfServiceListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTermsOfServiceListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TermsOfServiceListAdapter.kt\ncom/duckduckgo/app/privacymonitor/api/TermsOfServiceListAdapter\n*L\n1#1,34:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceListAdapter;",
        "",
        "()V",
        "fromJson",
        "",
        "Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;",
        "json",
        "",
        "",
        "Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;",
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

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceListAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2a525cfea30ffbL

    const/16 v2, 0xa

    const-string v3, "com/duckduckgo/app/privacymonitor/api/TermsOfServiceListAdapter"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceListAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceListAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/util/Map;)Ljava/util/List;
    .locals 13
    .param p1, "json"    # Ljava/util/Map;
    .annotation runtime Lcom/squareup/moshi/FromJson;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceListAdapter;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "json"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-boolean v2, v0, v2

    .line 27
    .local v1, "tos":Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x2

    aput-boolean v2, v0, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "entry":Ljava/util/Map$Entry;
    const/4 v5, 0x3

    aput-boolean v2, v0, v5

    .line 28
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;

    invoke-virtual {v5}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->getClassification()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    aput-boolean v2, v0, v6

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x5

    aput-boolean v2, v0, v6

    :goto_1
    check-cast v5, Ljava/lang/String;

    .local v5, "classification":Ljava/lang/String;
    const/4 v6, 0x6

    aput-boolean v2, v0, v6

    .line 29
    new-instance v12, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;

    invoke-virtual {v6}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->getScore()I

    move-result v8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;

    invoke-virtual {v6}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->getMatch()Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;

    move-result-object v6

    invoke-virtual {v6}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->getGood()Ljava/util/List;

    move-result-object v10

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;

    invoke-virtual {v6}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->getMatch()Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;

    move-result-object v6

    invoke-virtual {v6}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->getBad()Ljava/util/List;

    move-result-object v11

    move-object v6, v12

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "classification":Ljava/lang/String;
    const/4 v4, 0x7

    aput-boolean v2, v0, v4

    goto :goto_0

    .line 31
    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    const/16 v4, 0x8

    aput-boolean v2, v0, v4

    return-object v3
.end method
