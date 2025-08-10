.class public final Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;
.super Landroid/support/v4/app/Fragment;
.source "FieldsEditFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView;,
        Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00142\u00020\u0001:\u0002\u0014\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0002J&\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;",
        "Landroid/support/v4/app/Fragment;",
        "()V",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "isEditingHiddenFields",
        "",
        "addField",
        "",
        "passField",
        "Lorg/ligi/passandroid/model/pass/PassField;",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "getPass",
        "Lorg/ligi/passandroid/model/pass/PassImpl;",
        "onCreateView",
        "Landroid/view/View;",
        "container",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
        "FieldView",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final ARGUMENT_KEY:Ljava/lang/String; = "KEY"

.field public static final Companion:Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private inflater:Landroid/view/LayoutInflater;

.field private isEditingHiddenFields:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->Companion:Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;

    .line 77
    const-string v0, "KEY"

    sput-object v0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->ARGUMENT_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$addField(Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;Lorg/ligi/passandroid/model/pass/PassField;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;
    .param p1, "passField"    # Lorg/ligi/passandroid/model/pass/PassField;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->addField(Lorg/ligi/passandroid/model/pass/PassField;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final synthetic access$getARGUMENT_KEY$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 17
    sget-object v0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->ARGUMENT_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPass(Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;)Lorg/ligi/passandroid/model/pass/PassImpl;
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->getPass()Lorg/ligi/passandroid/model/pass/PassImpl;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$isEditingHiddenFields$p(Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;)Z
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;

    .prologue
    .line 17
    iget-boolean v0, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->isEditingHiddenFields:Z

    return v0
.end method

.method public static final synthetic access$setEditingHiddenFields$p(Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;
    .param p1, "<set-?>"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->isEditingHiddenFields:Z

    return-void
.end method

.method private final addField(Lorg/ligi/passandroid/model/pass/PassField;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "passField"    # Lorg/ligi/passandroid/model/pass/PassField;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->inflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    const-string v2, "inflater"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const v2, 0x7f030034

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    .line 50
    .local v0, "child":Landroid/view/ViewGroup;
    new-instance v1, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView;

    invoke-direct {v1, p0, v0}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView;-><init>(Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->getPass()Lorg/ligi/passandroid/model/pass/PassImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ligi/passandroid/model/pass/PassImpl;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView;->apply(Lorg/ligi/passandroid/model/pass/PassField;Ljava/util/List;)V

    .line 51
    check-cast v0, Landroid/view/View;

    .end local v0    # "child":Landroid/view/ViewGroup;
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method private final getPass()Lorg/ligi/passandroid/model/pass/PassImpl;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v0}, Lorg/ligi/passandroid/App$Companion;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/ligi/passandroid/model/PassStore;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type org.ligi.passandroid.model.pass.PassImpl"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lorg/ligi/passandroid/model/pass/PassImpl;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-string v5, "inflater"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->inflater:Landroid/view/LayoutInflater;

    .line 27
    const v5, 0x7f030035

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 29
    .local v3, "inflate":Landroid/view/View;
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    sget-object v7, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->Companion:Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;

    # invokes: Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;->getARGUMENT_KEY()Ljava/lang/String;
    invoke-static {v7}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;->access$getARGUMENT_KEY$p(Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->isEditingHiddenFields:Z

    .line 31
    iget-boolean v5, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->isEditingHiddenFields:Z

    if-eqz v5, :cond_1

    .line 32
    const-string v5, "inflate"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lorg/ligi/passandroid/R$id;->add_field:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v7, 0x7f070016

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(I)V

    .line 35
    :goto_0
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->getPass()Lorg/ligi/passandroid/model/pass/PassImpl;

    move-result-object v5

    invoke-virtual {v5}, Lorg/ligi/passandroid/model/pass/PassImpl;->getFields()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 37
    nop

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 91
    .local v0, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "element$iv$iv":Ljava/lang/Object;
    move-object v4, v2

    check-cast v4, Lorg/ligi/passandroid/model/pass/PassField;

    .line 37
    .local v4, "it":Lorg/ligi/passandroid/model/pass/PassField;
    invoke-virtual {v4}, Lorg/ligi/passandroid/model/pass/PassField;->getHide()Z

    move-result v5

    iget-boolean v8, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->isEditingHiddenFields:Z

    if-ne v5, v8, :cond_2

    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    .end local v2    # "element$iv$iv":Ljava/lang/Object;
    .end local v4    # "it":Lorg/ligi/passandroid/model/pass/PassField;
    :cond_1
    const-string v5, "inflate"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lorg/ligi/passandroid/R$id;->add_field:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v7, 0x7f070019

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .restart local v0    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v2    # "element$iv$iv":Ljava/lang/Object;
    .restart local v4    # "it":Lorg/ligi/passandroid/model/pass/PassField;
    :cond_2
    move v5, v6

    .line 37
    goto :goto_2

    .line 92
    .end local v2    # "element$iv$iv":Ljava/lang/Object;
    .end local v4    # "it":Lorg/ligi/passandroid/model/pass/PassField;
    :cond_3
    check-cast v0, Ljava/util/List;

    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    check-cast v0, Ljava/lang/Iterable;

    .line 38
    nop

    .line 93
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v4, v1

    check-cast v4, Lorg/ligi/passandroid/model/pass/PassField;

    .line 38
    .restart local v4    # "it":Lorg/ligi/passandroid/model/pass/PassField;
    sget v5, Lorg/ligi/passandroid/R$id;->fields_container:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const-string v7, "inflate.fields_container"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v5}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->addField(Lorg/ligi/passandroid/model/pass/PassField;Landroid/view/ViewGroup;)V

    nop

    goto :goto_3

    .line 94
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lorg/ligi/passandroid/model/pass/PassField;
    :cond_4
    nop

    .line 40
    sget v5, Lorg/ligi/passandroid/R$id;->add_field:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    new-instance v6, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$onCreateView$3;

    invoke-direct {v6, p0, v3}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$onCreateView$3;-><init>(Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;Landroid/view/View;)V

    check-cast v6, Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-object v3
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
