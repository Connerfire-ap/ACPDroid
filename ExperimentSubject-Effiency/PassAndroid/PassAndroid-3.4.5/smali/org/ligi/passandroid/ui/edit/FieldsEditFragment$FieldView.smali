.class public final Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView;
.super Ljava/lang/Object;
.source "FieldsEditFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FieldView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView;",
        "",
        "container",
        "Landroid/view/ViewGroup;",
        "(Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;Landroid/view/ViewGroup;)V",
        "apply",
        "",
        "passField",
        "Lorg/ligi/passandroid/model/pass/PassField;",
        "fields",
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
.field private final container:Landroid/view/ViewGroup;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;


# direct methods
.method public constructor <init>(Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "$outer"    # Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView;->this$0:Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView;->container:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final apply(Lorg/ligi/passandroid/model/pass/PassField;Ljava/util/List;)V
    .locals 2
    .param p1, "passField"    # Lorg/ligi/passandroid/model/pass/PassField;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "fields"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ligi/passandroid/model/pass/PassField;",
            "Ljava/util/List",
            "<",
            "Lorg/ligi/passandroid/model/pass/PassField;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "passField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView;->container:Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/View;

    sget v1, Lorg/ligi/passandroid/R$id;->label_field_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView;->container:Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/View;

    sget v1, Lorg/ligi/passandroid/R$id;->value_field_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView;->container:Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/View;

    sget v1, Lorg/ligi/passandroid/R$id;->delete_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView$apply$1;

    invoke-direct {v1, p2, p1}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView$apply$1;-><init>(Ljava/util/List;Lorg/ligi/passandroid/model/pass/PassField;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView;->container:Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/View;

    sget v1, Lorg/ligi/passandroid/R$id;->value_field_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    const-string v1, "container.value_field_edit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView$apply$2;

    invoke-direct {v1, p1}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView$apply$2;-><init>(Lorg/ligi/passandroid/model/pass/PassField;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lorg/ligi/kaxt/EditTextExtensionsKt;->doAfterEdit(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)V

    .line 69
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView;->container:Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/View;

    sget v1, Lorg/ligi/passandroid/R$id;->label_field_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    const-string v1, "container.label_field_edit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView$apply$3;

    invoke-direct {v1, p1}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView$apply$3;-><init>(Lorg/ligi/passandroid/model/pass/PassField;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lorg/ligi/kaxt/EditTextExtensionsKt;->doAfterEdit(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)V

    .line 72
    return-void
.end method
