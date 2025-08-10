.class final Lorg/threeten/bp/zone/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final SZR:B = 0x1t

.field static final ZOT:B = 0x2t

.field static final ZOTRULE:B = 0x3t

.field private static final serialVersionUID:J = -0x7b4f011483e5ac42L


# instance fields
.field private object:Ljava/lang/Object;

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # B
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-byte p1, p0, Lorg/threeten/bp/zone/Ser;->type:B

    .line 86
    iput-object p2, p0, Lorg/threeten/bp/zone/Ser;->object:Ljava/lang/Object;

    .line 87
    return-void
.end method

.method static read(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 2
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 133
    .local v0, "type":B
    invoke-static {v0, p0}, Lorg/threeten/bp/zone/Ser;->readInternal(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static readEpochSec(Ljava/io/DataInput;)J
    .locals 10
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 216
    .local v0, "hiByte":I
    const/16 v3, 0xff

    if-ne v0, v3, :cond_0

    .line 217
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v6

    .line 222
    :goto_0
    return-wide v6

    .line 219
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    and-int/lit16 v2, v3, 0xff

    .line 220
    .local v2, "midByte":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    and-int/lit16 v1, v3, 0xff

    .line 221
    .local v1, "loByte":I
    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v6, v2, 0x8

    add-int/2addr v3, v6

    add-int/2addr v3, v1

    int-to-long v4, v3

    .line 222
    .local v4, "tot":J
    const-wide/16 v6, 0x384

    mul-long/2addr v6, v4

    const-wide v8, 0x110bc5000L

    sub-long/2addr v6, v8

    goto :goto_0
.end method

.method private static readInternal(BLjava/io/DataInput;)Ljava/lang/Object;
    .locals 2
    .param p0, "type"    # B
    .param p1, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 137
    packed-switch p0, :pswitch_data_0

    .line 145
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :pswitch_0
    invoke-static {p1}, Lorg/threeten/bp/zone/StandardZoneRules;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/zone/StandardZoneRules;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    .line 141
    :pswitch_1
    invoke-static {p1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v0

    goto :goto_0

    .line 143
    :pswitch_2
    invoke-static {p1}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static readOffset(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;
    .locals 2
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 184
    .local v0, "offsetByte":I
    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-static {v1}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    mul-int/lit16 v1, v0, 0x384

    invoke-static {v1}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/threeten/bp/zone/Ser;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static write(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lorg/threeten/bp/zone/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V

    .line 101
    return-void
.end method

.method static writeEpochSec(JLjava/io/DataOutput;)V
    .locals 8
    .param p0, "epochSec"    # J
    .param p2, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x384

    .line 196
    const-wide v2, -0x110bc5000L

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    const-wide v2, 0x26cb5db00L

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    rem-long v2, p0, v6

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 197
    const-wide v2, 0x110bc5000L

    add-long/2addr v2, p0

    div-long/2addr v2, v6

    long-to-int v0, v2

    .line 198
    .local v0, "store":I
    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 199
    ushr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 200
    and-int/lit16 v1, v0, 0xff

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 205
    .end local v0    # "store":I
    :goto_0
    return-void

    .line 202
    :cond_0
    const/16 v1, 0xff

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 203
    invoke-interface {p2, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_0
.end method

.method private static writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V
    .locals 2
    .param p0, "type"    # B
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 105
    packed-switch p0, :pswitch_data_0

    .line 116
    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :pswitch_0
    check-cast p1, Lorg/threeten/bp/zone/StandardZoneRules;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/zone/StandardZoneRules;->writeExternal(Ljava/io/DataOutput;)V

    .line 118
    :goto_0
    return-void

    .line 110
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_1
    check-cast p1, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 113
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_2
    check-cast p1, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static writeOffset(Lorg/threeten/bp/ZoneOffset;Ljava/io/DataOutput;)V
    .locals 4
    .param p0, "offset"    # Lorg/threeten/bp/ZoneOffset;
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x7f

    .line 167
    invoke-virtual {p0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v1

    .line 168
    .local v1, "offsetSecs":I
    rem-int/lit16 v3, v1, 0x384

    if-nez v3, :cond_1

    div-int/lit16 v0, v1, 0x384

    .line 169
    .local v0, "offsetByte":I
    :goto_0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 170
    if-ne v0, v2, :cond_0

    .line 171
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 173
    :cond_0
    return-void

    .end local v0    # "offsetByte":I
    :cond_1
    move v0, v2

    .line 168
    goto :goto_0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/threeten/bp/zone/Ser;->type:B

    .line 128
    iget-byte v0, p0, Lorg/threeten/bp/zone/Ser;->type:B

    invoke-static {v0, p1}, Lorg/threeten/bp/zone/Ser;->readInternal(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/zone/Ser;->object:Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-byte v0, p0, Lorg/threeten/bp/zone/Ser;->type:B

    iget-object v1, p0, Lorg/threeten/bp/zone/Ser;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lorg/threeten/bp/zone/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V

    .line 97
    return-void
.end method
