.class public final Lorg/ligi/passandroid/ui/PassViewActivity;
.super Lorg/ligi/passandroid/ui/PassViewActivityBase;
.source "PassViewActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0016\u001a\u00020\nH\u0014J%\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0000\u00a2\u0006\u0002\u0008\u001eJ\u0008\u0010\u001f\u001a\u00020\nH\u0014R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006 "
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/PassViewActivity;",
        "Lorg/ligi/passandroid/ui/PassViewActivityBase;",
        "()V",
        "passViewHelper",
        "Lorg/ligi/passandroid/ui/PassViewHelper;",
        "getPassViewHelper",
        "()Lorg/ligi/passandroid/ui/PassViewHelper;",
        "passViewHelper$delegate",
        "Lkotlin/Lazy;",
        "onAttachedToWindow",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "",
        "menu",
        "Landroid/view/Menu;",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onPrepareOptionsMenu",
        "onResumeFragments",
        "processImage",
        "view",
        "Landroid/widget/ImageView;",
        "name",
        "",
        "pass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "processImage$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug",
        "refresh",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final passViewHelper$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lorg/ligi/passandroid/ui/PassViewActivity;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "passViewHelper"

    const-string v5, "getPassViewHelper()Lorg/ligi/passandroid/ui/PassViewHelper;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lorg/ligi/passandroid/ui/PassViewActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;-><init>()V

    .line 32
    new-instance v0, Lorg/ligi/passandroid/ui/PassViewActivity$passViewHelper$2;

    invoke-direct {v0, p0}, Lorg/ligi/passandroid/ui/PassViewActivity$passViewHelper$2;-><init>(Lorg/ligi/passandroid/ui/PassViewActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivity;->passViewHelper$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getPassViewHelper()Lorg/ligi/passandroid/ui/PassViewHelper;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivity;->passViewHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lorg/ligi/passandroid/ui/PassViewActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/ui/PassViewHelper;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    invoke-super {p0, p1}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-static {p0}, Lorg/ligi/kaxt/ActivityExtensionsKt;->disableRotation(Landroid/app/Activity;)V

    .line 103
    const v1, 0x7f03001c

    invoke-virtual {p0, v1}, Lorg/ligi/passandroid/ui/PassViewActivity;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030051

    sget v1, Lorg/ligi/passandroid/R$id;->passExtrasContainer:I

    invoke-virtual {p0, v1}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "passExtrasView":Landroid/view/View;
    sget v1, Lorg/ligi/passandroid/R$id;->passExtrasContainer:I

    invoke-virtual {p0, v1}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 142
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 143
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 144
    invoke-super {p0, p1}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "item"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 159
    invoke-super {p0, p1}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 147
    .end local p0    # "this":Lorg/ligi/passandroid/ui/PassViewActivity;
    :goto_0
    return v1

    .restart local p0    # "this":Lorg/ligi/passandroid/ui/PassViewActivity;
    :pswitch_0
    move-object v1, p0

    .line 149
    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "upIntent":Landroid/content/Intent;
    move-object v1, p0

    .line 150
    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 151
    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 152
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->finish()V

    .line 155
    .end local p0    # "this":Lorg/ligi/passandroid/ui/PassViewActivity;
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 154
    .restart local p0    # "this":Lorg/ligi/passandroid/ui/PassViewActivity;
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "this":Lorg/ligi/passandroid/ui/PassViewActivity;
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_1

    .line 147
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    const v0, 0x7f0e00f4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string v0, "menu.findItem(R.id.menu_map)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v0

    invoke-interface {v0}, Lorg/ligi/passandroid/model/pass/Pass;->getLocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 135
    const v0, 0x7f0e00fb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu.findItem(R.id.menu_update)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lorg/ligi/passandroid/ui/PassViewActivityBase;->Companion:Lorg/ligi/passandroid/ui/PassViewActivityBase$Companion;

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ligi/passandroid/ui/PassViewActivityBase$Companion;->mightPassBeAbleToUpdate(Lorg/ligi/passandroid/model/pass/Pass;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 136
    const v0, 0x7f0e00fa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu.findItem(R.id.install_shortcut)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x17

    new-instance v2, Lkotlin/ranges/IntRange;

    const/16 v3, 0x19

    invoke-direct {v2, v1, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v1}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 137
    invoke-super {p0, p1}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResumeFragments()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->onResumeFragments()V

    .line 113
    sget v0, Lorg/ligi/passandroid/R$id;->moreTextView:I

    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lorg/ligi/passandroid/ui/PassViewActivity$onResumeFragments$1;

    invoke-direct {v1, p0}, Lorg/ligi/passandroid/ui/PassViewActivity$onResumeFragments$1;-><init>(Lorg/ligi/passandroid/ui/PassViewActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget v0, Lorg/ligi/passandroid/R$id;->barcode_img:I

    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lorg/ligi/passandroid/ui/PassViewActivity$onResumeFragments$2;

    invoke-direct {v1, p0}, Lorg/ligi/passandroid/ui/PassViewActivity$onResumeFragments$2;-><init>(Lorg/ligi/passandroid/ui/PassViewActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    sget v0, Lorg/ligi/passandroid/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/ui/PassViewActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 129
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->configureActionBar()V

    .line 130
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->refresh()V

    .line 131
    return-void
.end method

.method public final processImage$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug(Landroid/widget/ImageView;Ljava/lang/String;Lorg/ligi/passandroid/model/pass/Pass;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pass"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Lorg/ligi/passandroid/model/pass/Pass;->getBitmap(Lorg/ligi/passandroid/model/PassStore;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/16 v2, 0x12c

    if-le v1, v2, :cond_0

    .line 37
    new-instance v1, Lorg/ligi/passandroid/ui/PassViewActivity$processImage$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/ligi/passandroid/ui/PassViewActivity$processImage$1;-><init>(Lorg/ligi/passandroid/ui/PassViewActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getPassViewHelper()Lorg/ligi/passandroid/ui/PassViewHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/ligi/passandroid/ui/PassViewHelper;->setBitmapSafe(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 44
    return-void
.end method

.method protected refresh()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v7, 0x1

    const/16 v13, 0xf

    const/4 v8, 0x0

    .line 47
    invoke-super {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->refresh()V

    .line 49
    new-instance v9, Lorg/ligi/passandroid/ui/BarcodeUIController;

    const v6, 0x1020002

    invoke-virtual {p0, v6}, Lorg/ligi/passandroid/ui/PassViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const-string v6, "findViewById(android.R.id.content)"

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v6

    invoke-interface {v6}, Lorg/ligi/passandroid/model/pass/Pass;->getBarCode()Lorg/ligi/passandroid/model/pass/BarCode;

    move-result-object v11

    move-object v6, p0

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getPassViewHelper()Lorg/ligi/passandroid/ui/PassViewHelper;

    move-result-object v12

    invoke-direct {v9, v10, v11, v6, v12}, Lorg/ligi/passandroid/ui/BarcodeUIController;-><init>(Landroid/view/View;Lorg/ligi/passandroid/model/pass/BarCode;Landroid/app/Activity;Lorg/ligi/passandroid/ui/PassViewHelper;)V

    .line 51
    sget v6, Lorg/ligi/passandroid/R$id;->logo_img_view:I

    invoke-virtual {p0, v6}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const-string v9, "logo_img_view"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "logo"

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v10

    invoke-virtual {p0, v6, v9, v10}, Lorg/ligi/passandroid/ui/PassViewActivity;->processImage$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug(Landroid/widget/ImageView;Ljava/lang/String;Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 52
    sget v6, Lorg/ligi/passandroid/R$id;->footer_img_view:I

    invoke-virtual {p0, v6}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const-string v9, "footer_img_view"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "footer"

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v10

    invoke-virtual {p0, v6, v9, v10}, Lorg/ligi/passandroid/ui/PassViewActivity;->processImage$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug(Landroid/widget/ImageView;Ljava/lang/String;Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 53
    sget v6, Lorg/ligi/passandroid/R$id;->thumbnail_img_view:I

    invoke-virtual {p0, v6}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const-string v9, "thumbnail_img_view"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "thumbnail"

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v10

    invoke-virtual {p0, v6, v9, v10}, Lorg/ligi/passandroid/ui/PassViewActivity;->processImage$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug(Landroid/widget/ImageView;Ljava/lang/String;Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 54
    sget v6, Lorg/ligi/passandroid/R$id;->strip_img_view:I

    invoke-virtual {p0, v6}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const-string v9, "strip_img_view"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "strip"

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v10

    invoke-virtual {p0, v6, v9, v10}, Lorg/ligi/passandroid/ui/PassViewActivity;->processImage$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug(Landroid/widget/ImageView;Ljava/lang/String;Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 56
    sget v6, Lorg/ligi/passandroid/R$id;->map_container:I

    invoke-virtual {p0, v6}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_1

    .line 57
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v6

    invoke-interface {v6}, Lorg/ligi/passandroid/model/pass/Pass;->getLocations()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v7

    :goto_0
    if-eqz v6, :cond_0

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    invoke-static {v6}, Lorg/ligi/passandroid/maps/PassbookMapsFacade;->init(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 58
    :cond_0
    sget v6, Lorg/ligi/passandroid/R$id;->map_container:I

    invoke-virtual {p0, v6}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    const-string v9, "map_container"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "back_str":Ljava/lang/StringBuilder;
    sget v6, Lorg/ligi/passandroid/R$id;->front_field_container:I

    invoke-virtual {p0, v6}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 66
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v6

    invoke-interface {v6}, Lorg/ligi/passandroid/model/pass/Pass;->getFields()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/pass/PassField;

    .line 67
    .local v1, "field":Lorg/ligi/passandroid/model/pass/PassField;
    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassField;->getHide()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 68
    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassField;->toHtmlSnippet()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v0    # "back_str":Ljava/lang/StringBuilder;
    .end local v1    # "field":Lorg/ligi/passandroid/model/pass/PassField;
    :cond_2
    move v6, v8

    .line 57
    goto :goto_0

    .line 70
    .restart local v0    # "back_str":Ljava/lang/StringBuilder;
    .restart local v1    # "field":Lorg/ligi/passandroid/model/pass/PassField;
    :cond_3
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f03003d

    sget v6, Lorg/ligi/passandroid/R$id;->front_field_container:I

    invoke-virtual {p0, v6}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v11, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 71
    .local v4, "v":Landroid/view/View;
    const v6, 0x7f0e00b5

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v6, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    check-cast v2, Landroid/widget/TextView;

    .line 72
    .local v2, "key":Landroid/widget/TextView;
    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v6, 0x7f0e00b6

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_5

    new-instance v6, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    check-cast v5, Landroid/widget/TextView;

    .line 74
    .local v5, "value":Landroid/widget/TextView;
    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    sget v6, Lorg/ligi/passandroid/R$id;->front_field_container:I

    invoke-virtual {p0, v6}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    invoke-static {v2, v13}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;I)Z

    .line 78
    invoke-static {v5, v13}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;I)Z

    goto :goto_1

    .end local v1    # "field":Lorg/ligi/passandroid/model/pass/PassField;
    .end local v2    # "key":Landroid/widget/TextView;
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "value":Landroid/widget/TextView;
    :cond_6
    move-object v6, v0

    .line 83
    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_7

    move v6, v7

    :goto_2
    if-eqz v6, :cond_8

    .line 84
    sget v6, Lorg/ligi/passandroid/R$id;->back_fields:I

    invoke-virtual {p0, v6}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, "back_fields"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/ligi/compat/HtmlCompat;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    sget v6, Lorg/ligi/passandroid/R$id;->moreTextView:I

    invoke-virtual {p0, v6}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, "moreTextView"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :goto_3
    sget v6, Lorg/ligi/passandroid/R$id;->back_fields:I

    invoke-virtual {p0, v6}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6, v13}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;I)Z

    .line 93
    new-instance v3, Lorg/ligi/passandroid/ui/pass_view_holder/VerbosePassViewHolder;

    sget v6, Lorg/ligi/passandroid/R$id;->pass_card:I

    invoke-virtual {p0, v6}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/CardView;

    const-string v7, "pass_card"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Lorg/ligi/passandroid/ui/pass_view_holder/VerbosePassViewHolder;-><init>(Landroid/support/v7/widget/CardView;)V

    .line 94
    .local v3, "passViewHolder":Lorg/ligi/passandroid/ui/pass_view_holder/VerbosePassViewHolder;
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v6

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v7

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "this":Lorg/ligi/passandroid/ui/PassViewActivity;
    invoke-virtual {v3, v6, v7, p0}, Lorg/ligi/passandroid/ui/pass_view_holder/VerbosePassViewHolder;->apply(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/PassStore;Landroid/app/Activity;)V

    .line 96
    return-void

    .end local v3    # "passViewHolder":Lorg/ligi/passandroid/ui/pass_view_holder/VerbosePassViewHolder;
    .restart local p0    # "this":Lorg/ligi/passandroid/ui/PassViewActivity;
    :cond_7
    move v6, v8

    .line 83
    goto :goto_2

    .line 87
    :cond_8
    sget v6, Lorg/ligi/passandroid/R$id;->moreTextView:I

    invoke-virtual {p0, v6}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, "moreTextView"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method
