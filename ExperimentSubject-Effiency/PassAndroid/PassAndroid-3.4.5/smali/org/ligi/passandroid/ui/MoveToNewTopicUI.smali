.class public final Lorg/ligi/passandroid/ui/MoveToNewTopicUI;
.super Ljava/lang/Object;
.source "MoveToNewTopicUI.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/MoveToNewTopicUI;",
        "",
        "context",
        "Landroid/app/Activity;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "pass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "(Landroid/app/Activity;Lorg/ligi/passandroid/model/PassStore;Lorg/ligi/passandroid/model/pass/Pass;)V",
        "show",
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
.field private final context:Landroid/app/Activity;

.field private final pass:Lorg/ligi/passandroid/model/pass/Pass;

.field private final passStore:Lorg/ligi/passandroid/model/PassStore;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/ligi/passandroid/model/PassStore;Lorg/ligi/passandroid/model/pass/Pass;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "passStore"    # Lorg/ligi/passandroid/model/PassStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->context:Landroid/app/Activity;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->passStore:Lorg/ligi/passandroid/model/PassStore;

    iput-object p3, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->pass:Lorg/ligi/passandroid/model/pass/Pass;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lorg/ligi/passandroid/ui/MoveToNewTopicUI;)Landroid/app/Activity;
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/MoveToNewTopicUI;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public static final synthetic access$getPass$p(Lorg/ligi/passandroid/ui/MoveToNewTopicUI;)Lorg/ligi/passandroid/model/pass/Pass;
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/MoveToNewTopicUI;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->pass:Lorg/ligi/passandroid/model/pass/Pass;

    return-object v0
.end method

.method public static final synthetic access$getPassStore$p(Lorg/ligi/passandroid/ui/MoveToNewTopicUI;)Lorg/ligi/passandroid/model/PassStore;
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/MoveToNewTopicUI;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->passStore:Lorg/ligi/passandroid/model/PassStore;

    return-object v0
.end method


# virtual methods
.method public final show()V
    .locals 15

    .prologue
    .line 16
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->context:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 17
    iget-object v0, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->context:Landroid/app/Activity;

    const v14, 0x7f070073

    invoke-virtual {v0, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 18
    const v2, 0x7f030031

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 19
    const v2, 0x104000a

    const/4 v14, 0x0

    invoke-virtual {v0, v2, v14}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 20
    const/high16 v14, 0x1040000

    new-instance v0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$dialog$1;

    invoke-direct {v0, p0}, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$dialog$1;-><init>(Lorg/ligi/passandroid/ui/MoveToNewTopicUI;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v14, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 21
    new-instance v0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$dialog$2;

    invoke-direct {v0, p0}, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$dialog$2;-><init>(Lorg/ligi/passandroid/ui/MoveToNewTopicUI;)V

    check-cast v0, Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v9

    .line 24
    .local v9, "dialog":Landroid/support/v7/app/AlertDialog;
    new-instance v5, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$move$1;

    invoke-direct {v5, p0, v9}, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$move$1;-><init>(Lorg/ligi/passandroid/ui/MoveToNewTopicUI;Landroid/support/v7/app/AlertDialog;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 29
    .local v5, "move":Lkotlin/jvm/functions/Function1;
    const v0, 0x7f0e0092

    invoke-virtual {v9, v0}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.widget.EditText"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v12, Landroid/widget/EditText;

    .line 30
    .local v12, "newTopicEditText":Landroid/widget/EditText;
    const v0, 0x7f0e0093

    invoke-virtual {v9, v0}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v4, Landroid/view/ViewGroup;

    .line 33
    .local v4, "suggestionButtonContainer":Landroid/view/ViewGroup;
    const/4 v0, -0x1

    invoke-virtual {v9, v0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$1;

    invoke-direct {v0, p0, v12, v5}, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$1;-><init>(Lorg/ligi/passandroid/ui/MoveToNewTopicUI;Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->passStore:Lorg/ligi/passandroid/model/PassStore;

    invoke-interface {v0}, Lorg/ligi/passandroid/model/PassStore;->getClassifier()Lorg/ligi/passandroid/model/PassClassifier;

    move-result-object v0

    iget-object v2, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->pass:Lorg/ligi/passandroid/model/pass/Pass;

    const-string v14, ""

    invoke-virtual {v0, v2, v14}, Lorg/ligi/passandroid/model/PassClassifier;->getTopic(Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "oldTopic":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v13, v0, [I

    fill-array-data v13, :array_0

    .line 46
    .local v13, "suggestionTopicStringIds":[I
    move-object v6, v13

    .line 58
    .local v6, "$receiver$iv":[I
    new-instance v8, Ljava/util/ArrayList;

    array-length v0, v6

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 59
    .local v8, "destination$iv$iv":Ljava/util/Collection;
    const/4 v0, 0x0

    :goto_0
    array-length v2, v6

    if-ge v0, v2, :cond_2

    aget v11, v6, v0

    .line 46
    .local v11, "item$iv$iv":I
    iget-object v2, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->context:Landroid/app/Activity;

    invoke-virtual {v2, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v11    # "item$iv$iv":I
    :cond_2
    check-cast v8, Ljava/util/List;

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    check-cast v8, Ljava/lang/Iterable;

    .line 46
    nop

    .line 62
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v1, v10

    check-cast v1, Ljava/lang/String;

    .line 47
    .local v1, "it":Ljava/lang/String;
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 48
    new-instance v7, Landroid/widget/Button;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->context:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .local v7, "button":Landroid/widget/Button;
    move-object v0, v1

    .line 49
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v7

    .line 50
    check-cast v0, Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    new-instance v0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$$inlined$forEach$lambda$1;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$$inlined$forEach$lambda$1;-><init>(Ljava/lang/String;Lorg/ligi/passandroid/ui/MoveToNewTopicUI;Ljava/lang/String;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .end local v7    # "button":Landroid/widget/Button;
    :cond_3
    nop

    nop

    goto :goto_1

    .line 63
    .end local v1    # "it":Ljava/lang/String;
    .end local v10    # "element$iv":Ljava/lang/Object;
    :cond_4
    nop

    .line 54
    return-void

    .line 44
    nop

    :array_0
    .array-data 4
        0x7f0700a7
        0x7f0700a5
        0x7f0700a6
    .end array-data
.end method
