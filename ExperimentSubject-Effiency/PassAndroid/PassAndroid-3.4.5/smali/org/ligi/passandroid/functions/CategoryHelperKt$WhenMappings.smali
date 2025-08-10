.class public final synthetic Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lorg/ligi/passandroid/model/pass/PassType;->values()[Lorg/ligi/passandroid/model/pass/PassType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->BOARDING:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->EVENT:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->COUPON:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->LOYALTY:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->GENERIC:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->VOUCHER:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    invoke-static {}, Lorg/ligi/passandroid/model/pass/PassType;->values()[Lorg/ligi/passandroid/model/pass/PassType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->BOARDING:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->EVENT:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->COUPON:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->LOYALTY:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->VOUCHER:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->GENERIC:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    invoke-static {}, Lorg/ligi/passandroid/model/pass/PassType;->values()[Lorg/ligi/passandroid/model/pass/PassType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->BOARDING:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->EVENT:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->COUPON:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->LOYALTY:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->VOUCHER:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sget-object v0, Lorg/ligi/passandroid/functions/CategoryHelperKt$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->GENERIC:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    return-void
.end method
