.class public final Lorg/ligi/passandroid/model/PassStoreProjection;
.super Ljava/lang/Object;
.source "PassStoreProjection.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0013\u001a\u00020\u0014R0\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/PassStoreProjection;",
        "",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "topic",
        "",
        "passSortOrder",
        "Lorg/ligi/passandroid/model/comparator/PassSortOrder;",
        "(Lorg/ligi/passandroid/model/PassStore;Ljava/lang/String;Lorg/ligi/passandroid/model/comparator/PassSortOrder;)V",
        "<set-?>",
        "",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "passList",
        "getPassList",
        "()Ljava/util/List;",
        "setPassList",
        "(Ljava/util/List;)V",
        "getTopic",
        "()Ljava/lang/String;",
        "refresh",
        "",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private passList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lorg/ligi/passandroid/model/pass/Pass;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final passSortOrder:Lorg/ligi/passandroid/model/comparator/PassSortOrder;

.field private final passStore:Lorg/ligi/passandroid/model/PassStore;

.field private final topic:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ligi/passandroid/model/PassStore;Ljava/lang/String;Lorg/ligi/passandroid/model/comparator/PassSortOrder;)V
    .locals 1
    .param p1, "passStore"    # Lorg/ligi/passandroid/model/PassStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "topic"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "passSortOrder"    # Lorg/ligi/passandroid/model/comparator/PassSortOrder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v0, "passStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/model/PassStoreProjection;->passStore:Lorg/ligi/passandroid/model/PassStore;

    iput-object p2, p0, Lorg/ligi/passandroid/model/PassStoreProjection;->topic:Ljava/lang/String;

    iput-object p3, p0, Lorg/ligi/passandroid/model/PassStoreProjection;->passSortOrder:Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/ligi/passandroid/model/PassStoreProjection;->passList:Ljava/util/List;

    .line 13
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/PassStoreProjection;->refresh()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ligi/passandroid/model/PassStore;Ljava/lang/String;Lorg/ligi/passandroid/model/comparator/PassSortOrder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .prologue
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    check-cast v0, Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lorg/ligi/passandroid/model/PassStoreProjection;-><init>(Lorg/ligi/passandroid/model/PassStore;Ljava/lang/String;Lorg/ligi/passandroid/model/comparator/PassSortOrder;)V

    return-void

    :cond_0
    move-object v0, p3

    goto :goto_0
.end method

.method private final setPassList(Ljava/util/List;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/ligi/passandroid/model/pass/Pass;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    iput-object p1, p0, Lorg/ligi/passandroid/model/PassStoreProjection;->passList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getPassList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/ligi/passandroid/model/pass/Pass;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lorg/ligi/passandroid/model/PassStoreProjection;->passList:Ljava/util/List;

    return-object v0
.end method

.method public final getTopic()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lorg/ligi/passandroid/model/PassStoreProjection;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public final refresh()V
    .locals 3

    .prologue
    .line 17
    iget-object v1, p0, Lorg/ligi/passandroid/model/PassStoreProjection;->passStore:Lorg/ligi/passandroid/model/PassStore;

    invoke-interface {v1}, Lorg/ligi/passandroid/model/PassStore;->getClassifier()Lorg/ligi/passandroid/model/PassClassifier;

    move-result-object v1

    iget-object v2, p0, Lorg/ligi/passandroid/model/PassStoreProjection;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/ligi/passandroid/model/PassClassifier;->getPassListByTopic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 18
    .local v0, "newPassList":Ljava/util/List;
    iget-object v1, p0, Lorg/ligi/passandroid/model/PassStoreProjection;->passSortOrder:Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p0, Lorg/ligi/passandroid/model/PassStoreProjection;->passSortOrder:Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->toComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 22
    :cond_0
    iput-object v0, p0, Lorg/ligi/passandroid/model/PassStoreProjection;->passList:Ljava/util/List;

    .line 23
    return-void
.end method
