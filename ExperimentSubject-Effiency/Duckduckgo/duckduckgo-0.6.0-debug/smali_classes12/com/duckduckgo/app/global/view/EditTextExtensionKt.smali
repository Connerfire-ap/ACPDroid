.class public final Lcom/duckduckgo/app/global/view/EditTextExtensionKt;
.super Ljava/lang/Object;
.source "EditTextExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "isDifferent",
        "",
        "Landroid/widget/EditText;",
        "newInput",
        "",
        "updateIfDifferent",
        "",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x2
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

    sget-object v0, Lcom/duckduckgo/app/global/view/EditTextExtensionKt;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x25b11a4bd5e4f1aL

    const/4 v2, 0x7

    const-string v3, "com/duckduckgo/app/global/view/EditTextExtensionKt"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/global/view/EditTextExtensionKt;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public static final isDifferent(Landroid/widget/EditText;Ljava/lang/String;)Z
    .locals 3
    .param p0, "$this$isDifferent"    # Landroid/widget/EditText;
    .param p1, "newInput"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/global/view/EditTextExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$isDifferent"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 22
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    aput-boolean v2, v0, v2

    return v1
.end method

.method public static final updateIfDifferent(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 3
    .param p0, "$this$updateIfDifferent"    # Landroid/widget/EditText;
    .param p1, "newInput"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/global/view/EditTextExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$updateIfDifferent"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newInput"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 25
    invoke-static {p0, p1}, Lcom/duckduckgo/app/global/view/EditTextExtensionKt;->isDifferent(Landroid/widget/EditText;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 26
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 28
    :goto_0
    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    return-void
.end method
