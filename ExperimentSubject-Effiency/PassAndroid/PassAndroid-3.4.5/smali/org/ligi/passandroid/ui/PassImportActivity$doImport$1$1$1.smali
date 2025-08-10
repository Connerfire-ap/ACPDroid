.class final Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PassImportActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1",
        "<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "path",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;)V
    .locals 1

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1$1;->invoke(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const-string v5, "path"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "path":Ljava/lang/String;
    const-string v5, "/"

    new-instance v6, Lkotlin/text/Regex;

    invoke-direct {v6, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1, v7}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v5

    nop

    .line 113
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 114
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 115
    .local v1, "iterator$iv":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 116
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "p1":Ljava/lang/String;
    check-cast v2, Ljava/lang/CharSequence;

    .line 78
    .end local v2    # "p1":Ljava/lang/String;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    if-nez v6, :cond_0

    .line 117
    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v4

    .line 121
    .end local v1    # "iterator$iv":Ljava/util/ListIterator;
    :goto_1
    check-cast v4, Ljava/util/Collection;

    .line 78
    nop

    .line 122
    if-nez v4, :cond_3

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    .restart local v1    # "iterator$iv":Ljava/util/ListIterator;
    :cond_1
    move v6, v7

    .line 78
    goto :goto_0

    .line 121
    .end local v1    # "iterator$iv":Ljava/util/ListIterator;
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    .line 123
    .local v4, "thisCollection$iv":Ljava/util/Collection;
    :cond_3
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 78
    :cond_4
    invoke-static {v5}, Lkotlin/collections/ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    .local v0, "id":Ljava/lang/String;
    iget-object v5, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;

    iget-object v5, v5, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;

    iget-object v5, v5, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    invoke-virtual {v5}, Lorg/ligi/passandroid/ui/PassImportActivity;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v5

    invoke-interface {v5, v0}, Lorg/ligi/passandroid/model/PassStore;->getPassbookForId(Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v3

    .line 81
    .local v3, "passbookForId":Lorg/ligi/passandroid/model/pass/Pass;
    iget-object v5, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;

    iget-object v5, v5, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;

    iget-object v5, v5, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    invoke-virtual {v5}, Lorg/ligi/passandroid/ui/PassImportActivity;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/ligi/passandroid/model/PassStore;->setCurrentPass(Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 83
    iget-object v5, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;

    iget-object v5, v5, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;

    iget-object v5, v5, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    invoke-virtual {v5}, Lorg/ligi/passandroid/ui/PassImportActivity;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v5

    invoke-interface {v5}, Lorg/ligi/passandroid/model/PassStore;->getClassifier()Lorg/ligi/passandroid/model/PassClassifier;

    move-result-object v5

    if-nez v3, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget-object v6, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;

    iget-object v6, v6, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;

    iget-object v6, v6, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    const v7, 0x7f0700a6

    invoke-virtual {v6, v7}, Lorg/ligi/passandroid/ui/PassImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.topic_new)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v6}, Lorg/ligi/passandroid/model/PassClassifier;->moveToTopic(Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;)V

    .line 85
    iget-object v5, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;

    iget-object v5, v5, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;

    iget-object v5, v5, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    const-class v6, Lorg/ligi/passandroid/ui/PassViewActivity;

    invoke-static {v5, v6}, Lorg/ligi/kaxt/ContextExtensionsKt;->startActivityFromClass(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    iget-object v5, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;

    iget-object v5, v5, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;

    iget-object v5, v5, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    invoke-virtual {v5}, Lorg/ligi/passandroid/ui/PassImportActivity;->finish()V

    .line 87
    return-void
.end method
