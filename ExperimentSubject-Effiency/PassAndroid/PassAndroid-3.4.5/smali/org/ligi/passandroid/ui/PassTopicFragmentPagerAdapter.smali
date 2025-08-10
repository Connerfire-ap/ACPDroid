.class public final Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "PassTopicFragmentPagerAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u0012\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;",
        "Landroid/support/v4/app/FragmentStatePagerAdapter;",
        "passClassifier",
        "Lorg/ligi/passandroid/model/PassClassifier;",
        "fragmentManager",
        "Landroid/support/v4/app/FragmentManager;",
        "(Lorg/ligi/passandroid/model/PassClassifier;Landroid/support/v4/app/FragmentManager;)V",
        "topic_array",
        "",
        "",
        "[Ljava/lang/String;",
        "getCount",
        "",
        "getItem",
        "Lorg/ligi/passandroid/ui/PassListFragment;",
        "position",
        "getItemPosition",
        "object",
        "",
        "getPageTitle",
        "notifyDataSetChanged",
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
.field private final passClassifier:Lorg/ligi/passandroid/model/PassClassifier;

.field private topic_array:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ligi/passandroid/model/PassClassifier;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "passClassifier"    # Lorg/ligi/passandroid/model/PassClassifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "passClassifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;->passClassifier:Lorg/ligi/passandroid/model/PassClassifier;

    .line 13
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;->topic_array:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "topic_array"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;->getItem(I)Lorg/ligi/passandroid/ui/PassListFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getItem(I)Lorg/ligi/passandroid/ui/PassListFragment;
    .locals 3
    .param p1, "position"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lorg/ligi/passandroid/ui/PassListFragment;->Companion:Lorg/ligi/passandroid/ui/PassListFragment$Companion;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;->topic_array:[Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "topic_array"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/PassListFragment$Companion;->newInstance(Ljava/lang/String;)Lorg/ligi/passandroid/ui/PassListFragment;

    move-result-object v0

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    const/4 v0, -0x2

    return v0
.end method

.method public bridge synthetic getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;->topic_array:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "topic_array"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    aget-object v0, v0, p1

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 17
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;->passClassifier:Lorg/ligi/passandroid/model/PassClassifier;

    invoke-virtual {v2}, Lorg/ligi/passandroid/model/PassClassifier;->getTopics()Ljava/util/Set;

    move-result-object v1

    .local v1, "topics":Ljava/util/Set;
    move-object v0, v1

    .line 18
    check-cast v0, Ljava/util/Collection;

    .line 30
    if-nez v0, :cond_0

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 31
    .local v0, "thisCollection$iv":Ljava/util/Collection;
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;->topic_array:[Ljava/lang/String;

    .line 19
    invoke-super {p0}, Landroid/support/v4/app/FragmentStatePagerAdapter;->notifyDataSetChanged()V

    .line 20
    return-void
.end method
