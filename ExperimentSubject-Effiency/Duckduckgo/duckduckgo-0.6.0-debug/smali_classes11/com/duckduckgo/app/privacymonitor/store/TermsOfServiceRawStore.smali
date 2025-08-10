.class public final Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;
.super Ljava/lang/Object;
.source "TermsOfServiceRawStore.kt"

# interfaces
.implements Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTermsOfServiceRawStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TermsOfServiceRawStore.kt\ncom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore\n*L\n1#1,60:1\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;",
        "Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "context",
        "Landroid/content/Context;",
        "trackerNetworks",
        "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
        "(Lcom/squareup/moshi/Moshi;Landroid/content/Context;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;)V",
        "data",
        "",
        "Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;",
        "getData",
        "()Ljava/util/List;",
        "data$delegate",
        "Lkotlin/Lazy;",
        "retrieveTerms",
        "url",
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


# instance fields
.field private final context:Landroid/content/Context;

.field private final data$delegate:Lkotlin/Lazy;

.field private final moshi:Lcom/squareup/moshi/Moshi;

.field private final trackerNetworks:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3473ff9726e52342L    # 5.097486321175462E-56

    const/16 v2, 0x1d

    const-string v3, "com/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/squareup/moshi/Moshi;Landroid/content/Context;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;)V
    .locals 3
    .param p1, "moshi"    # Lcom/squareup/moshi/Moshi;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "trackerNetworks"    # Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "moshi"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "trackerNetworks"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->moshi:Lcom/squareup/moshi/Moshi;

    iput-object p2, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->trackerNetworks:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    const/16 v1, 0x19

    aput-boolean v2, v0, v1

    .line 40
    new-instance v1, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore$data$2;

    invoke-direct {v1, p0}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore$data$2;-><init>(Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->data$delegate:Lkotlin/Lazy;

    const/16 v1, 0x1a

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;)Landroid/content/Context;
    .locals 4
    .param p0, "$this"    # Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->context:Landroid/content/Context;

    const/16 v2, 0x1b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static final synthetic access$getMoshi$p(Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;)Lcom/squareup/moshi/Moshi;
    .locals 4
    .param p0, "$this"    # Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->moshi:Lcom/squareup/moshi/Moshi;

    const/16 v2, 0x1c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private final getData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->data$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public retrieveTerms(Ljava/lang/String;)Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    .line 48
    invoke-direct {p0}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->getData()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x2

    aput-boolean v1, v0, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;

    .local v6, "it":Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;
    const/4 v7, 0x0

    .local v7, "$i$a$-find-TermsOfServiceRawStore$retrieveTerms$entry$1":I
    const/4 v8, 0x3

    aput-boolean v1, v0, v8

    invoke-virtual {v6}, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;->getName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v8, 0x4

    aput-boolean v1, v0, v8

    goto :goto_1

    :cond_0
    sget-object v8, Lcom/duckduckgo/app/global/UriString;->Companion:Lcom/duckduckgo/app/global/UriString$Companion;

    invoke-virtual {v6}, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Lcom/duckduckgo/app/global/UriString$Companion;->sameOrSubdomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x5

    aput-boolean v1, v0, v8

    :goto_1
    const/4 v8, 0x7

    aput-boolean v1, v0, v8

    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    const/4 v8, 0x6

    aput-boolean v1, v0, v8

    const/4 v6, 0x1

    .end local v6    # "it":Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;
    .end local v7    # "$i$a$-find-TermsOfServiceRawStore$retrieveTerms$entry$1":I
    :goto_2
    if-nez v6, :cond_2

    const/16 v3, 0x8

    aput-boolean v1, v0, v3

    goto :goto_0

    :cond_2
    const/16 v2, 0x9

    aput-boolean v1, v0, v2

    goto :goto_3

    :cond_3
    const/16 v2, 0xa

    aput-boolean v1, v0, v2

    move-object v3, v5

    :goto_3
    move-object v2, v3

    check-cast v2, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;

    .line 49
    .local v2, "entry":Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;
    if-eqz v2, :cond_4

    .line 50
    const/16 v3, 0xb

    aput-boolean v1, v0, v3

    return-object v2

    .line 53
    :cond_4
    iget-object v3, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->trackerNetworks:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    invoke-virtual {v3, p1}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->network(Ljava/lang/String;)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    move-result-object v3

    .line 54
    .local v3, "network":Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;
    if-eqz v3, :cond_9

    const/16 v6, 0xc

    aput-boolean v1, v0, v6

    .line 55
    invoke-direct {p0}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->getData()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v7, 0xd

    aput-boolean v1, v0, v7

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;

    .local v8, "it":Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;
    const/4 v9, 0x0

    .local v9, "$i$a$-find-TermsOfServiceRawStore$retrieveTerms$1":I
    const/16 v10, 0xe

    aput-boolean v1, v0, v10

    invoke-virtual {v8}, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;->getName()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    const/16 v10, 0xf

    aput-boolean v1, v0, v10

    goto :goto_5

    :cond_5
    sget-object v10, Lcom/duckduckgo/app/global/UriString;->Companion:Lcom/duckduckgo/app/global/UriString$Companion;

    invoke-virtual {v3}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/duckduckgo/app/global/UriString$Companion;->sameOrSubdomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    const/16 v10, 0x10

    aput-boolean v1, v0, v10

    :goto_5
    const/16 v10, 0x12

    aput-boolean v1, v0, v10

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    const/16 v10, 0x11

    aput-boolean v1, v0, v10

    const/4 v8, 0x1

    .end local v8    # "it":Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;
    .end local v9    # "$i$a$-find-TermsOfServiceRawStore$retrieveTerms$1":I
    :goto_6
    if-nez v8, :cond_7

    const/16 v7, 0x13

    aput-boolean v1, v0, v7

    goto :goto_4

    :cond_7
    const/16 v4, 0x14

    aput-boolean v1, v0, v4

    move-object v5, v7

    goto :goto_7

    :cond_8
    const/16 v4, 0x15

    aput-boolean v1, v0, v4

    :goto_7
    check-cast v5, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;

    const/16 v4, 0x16

    aput-boolean v1, v0, v4

    return-object v5

    .line 58
    :cond_9
    const/16 v4, 0x17

    aput-boolean v1, v0, v4

    return-object v5
.end method
