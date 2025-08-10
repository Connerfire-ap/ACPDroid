.class public final Lorg/ligi/passandroid/ui/edit/BarcodeEditController;
.super Ljava/lang/Object;
.source "BarcodeEditController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/passandroid/ui/edit/BarcodeEditController$IntentFragment;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u001eB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001b\u0010\u0017\u001a\u00020\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001aH\u0002\u00a2\u0006\u0002\u0010\u001bJ\u0006\u0010\u001c\u001a\u00020\u0007J\u0006\u0010\u001d\u001a\u00020\u0018R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u0012X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/edit/BarcodeEditController;",
        "",
        "rootView",
        "Landroid/view/View;",
        "context",
        "Landroid/support/v7/app/AppCompatActivity;",
        "barCode",
        "Lorg/ligi/passandroid/model/pass/BarCode;",
        "(Landroid/view/View;Landroid/support/v7/app/AppCompatActivity;Lorg/ligi/passandroid/model/pass/BarCode;)V",
        "barcodeFormat",
        "Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;",
        "getBarcodeFormat",
        "()Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;",
        "setBarcodeFormat",
        "(Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;)V",
        "getContext$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug",
        "()Landroid/support/v7/app/AppCompatActivity;",
        "intentFragment",
        "Landroid/support/v4/app/Fragment;",
        "getIntentFragment$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug",
        "()Landroid/support/v4/app/Fragment;",
        "getRootView",
        "()Landroid/view/View;",
        "bindRadio",
        "",
        "formats",
        "",
        "([Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;)V",
        "getBarCode",
        "refresh",
        "IntentFragment",
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
.field private barcodeFormat:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/support/v7/app/AppCompatActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final intentFragment:Landroid/support/v4/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v7/app/AppCompatActivity;Lorg/ligi/passandroid/model/pass/BarCode;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/support/v7/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "barCode"    # Lorg/ligi/passandroid/model/pass/BarCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "barCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->rootView:Landroid/view/View;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->context:Landroid/support/v7/app/AppCompatActivity;

    .line 54
    new-instance v0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$IntentFragment;

    invoke-direct {v0}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$IntentFragment;-><init>()V

    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->intentFragment:Landroid/support/v4/app/Fragment;

    .line 55
    invoke-virtual {p3}, Lorg/ligi/passandroid/model/pass/BarCode;->getFormat()Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->barcodeFormat:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    .line 57
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->rootView:Landroid/view/View;

    sget v1, Lorg/ligi/passandroid/R$id;->randomButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatImageButton;

    new-instance v1, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$1;

    invoke-direct {v1, p0}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$1;-><init>(Lorg/ligi/passandroid/ui/edit/BarcodeEditController;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->rootView:Landroid/view/View;

    sget v1, Lorg/ligi/passandroid/R$id;->scanButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatImageButton;

    new-instance v1, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$2;

    invoke-direct {v1, p0}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$2;-><init>(Lorg/ligi/passandroid/ui/edit/BarcodeEditController;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->intentFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$IntentFragment;

    new-instance v1, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$3;

    invoke-direct {v1, p0}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$3;-><init>(Lorg/ligi/passandroid/ui/edit/BarcodeEditController;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$IntentFragment;->setScanCallback(Lkotlin/jvm/functions/Function1;)V

    .line 81
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->context:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->intentFragment:Landroid/support/v4/app/Fragment;

    const-string v2, "intent_fragment"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 83
    invoke-static {}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->values()[Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->bindRadio([Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;)V

    .line 85
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->rootView:Landroid/view/View;

    sget v1, Lorg/ligi/passandroid/R$id;->messageInput:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {p3}, Lorg/ligi/passandroid/model/pass/BarCode;->getMessage()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->rootView:Landroid/view/View;

    sget v1, Lorg/ligi/passandroid/R$id;->messageInput:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatEditText;

    const-string v1, "rootView.messageInput"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$4;

    invoke-direct {v1, p0}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$4;-><init>(Lorg/ligi/passandroid/ui/edit/BarcodeEditController;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lorg/ligi/kaxt/EditTextExtensionsKt;->doAfterEdit(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)V

    .line 90
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->rootView:Landroid/view/View;

    sget v1, Lorg/ligi/passandroid/R$id;->alternativeMessageInput:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {p3}, Lorg/ligi/passandroid/model/pass/BarCode;->getAlternativeText()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->refresh()V

    return-void
.end method

.method private final bindRadio([Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;)V
    .locals 7
    .param p1, "formats"    # [Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    .prologue
    .line 36
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 114
    .local v0, "$receiver$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    move v6, v4

    :goto_0
    array-length v4, v0

    if-ge v6, v4, :cond_0

    aget-object v1, v0, v6

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    .line 37
    .local v2, "it":Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
    new-instance v3, Landroid/widget/RadioButton;

    iget-object v4, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->context:Landroid/support/v7/app/AppCompatActivity;

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 38
    .local v3, "radioButton":Landroid/widget/RadioButton;
    iget-object v4, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->rootView:Landroid/view/View;

    sget v5, Lorg/ligi/passandroid/R$id;->barcodeRadioGroup:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    move-object v5, v3

    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 40
    invoke-virtual {v2}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->name()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 41
    new-instance v4, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$bindRadio$$inlined$forEach$lambda$1;

    invoke-direct {v4, v2, p0}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$bindRadio$$inlined$forEach$lambda$1;-><init>(Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;Lorg/ligi/passandroid/ui/edit/BarcodeEditController;)V

    check-cast v4, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 48
    iget-object v4, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->barcodeFormat:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 49
    nop

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 115
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "it":Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
    .end local v3    # "radioButton":Landroid/widget/RadioButton;
    :cond_0
    nop

    .line 51
    return-void
.end method


# virtual methods
.method public final getBarCode()Lorg/ligi/passandroid/model/pass/BarCode;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lorg/ligi/passandroid/model/pass/BarCode;

    iget-object v3, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->barcodeFormat:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->rootView:Landroid/view/View;

    sget v4, Lorg/ligi/passandroid/R$id;->messageInput:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatEditText;

    const-string v4, "rootView.messageInput"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lorg/ligi/passandroid/model/pass/BarCode;-><init>(Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;Ljava/lang/String;)V

    .line 107
    .local v0, "$receiver":Lorg/ligi/passandroid/model/pass/BarCode;
    iget-object v2, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->rootView:Landroid/view/View;

    sget v3, Lorg/ligi/passandroid/R$id;->alternativeMessageInput:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatEditText;

    const-string v3, "rootView.alternativeMessageInput"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "newAlternativeText":Ljava/lang/String;
    move-object v2, v1

    .line 108
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_0

    .line 109
    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/model/pass/BarCode;->setAlternativeText(Ljava/lang/String;)V

    .line 111
    :cond_0
    nop

    nop

    return-object v0

    .line 108
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getBarcodeFormat()Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->barcodeFormat:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    return-object v0
.end method

.method public final getContext$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()Landroid/support/v7/app/AppCompatActivity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->context:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method public final getIntentFragment$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->intentFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final getRootView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public final refresh()V
    .locals 7

    .prologue
    .line 96
    new-instance v0, Lorg/ligi/passandroid/ui/BarcodeUIController;

    iget-object v4, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->getBarCode()Lorg/ligi/passandroid/model/pass/BarCode;

    move-result-object v5

    iget-object v2, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->context:Landroid/support/v7/app/AppCompatActivity;

    check-cast v2, Landroid/app/Activity;

    new-instance v6, Lorg/ligi/passandroid/ui/PassViewHelper;

    iget-object v3, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->context:Landroid/support/v7/app/AppCompatActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v6, v3}, Lorg/ligi/passandroid/ui/PassViewHelper;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v4, v5, v2, v6}, Lorg/ligi/passandroid/ui/BarcodeUIController;-><init>(Landroid/view/View;Lorg/ligi/passandroid/model/pass/BarCode;Landroid/app/Activity;Lorg/ligi/passandroid/ui/PassViewHelper;)V

    .line 97
    .local v0, "barcodeUIController":Lorg/ligi/passandroid/ui/BarcodeUIController;
    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/BarcodeUIController;->getBarcodeView()Landroid/widget/ImageView;

    move-result-object v2

    const-string v3, "barcodeUIController.getBarcodeView()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 99
    .local v1, "isBarcodeShown":Z
    :goto_0
    if-nez v1, :cond_1

    .line 100
    iget-object v2, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->rootView:Landroid/view/View;

    sget v3, Lorg/ligi/passandroid/R$id;->messageInput:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatEditText;

    const-string v3, "rootView.messageInput"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Invalid message"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatEditText;->setError(Ljava/lang/CharSequence;)V

    .line 103
    :goto_1
    return-void

    .line 97
    .end local v1    # "isBarcodeShown":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 102
    .restart local v1    # "isBarcodeShown":Z
    :cond_1
    iget-object v2, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->rootView:Landroid/view/View;

    sget v3, Lorg/ligi/passandroid/R$id;->messageInput:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatEditText;

    const-string v3, "rootView.messageInput"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatEditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final setBarcodeFormat(Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 20
    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->barcodeFormat:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    return-void
.end method
