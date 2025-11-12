# Rasbperry Pi

One of our Raspberry Pi boards already lost an altercation with a screwdriver. Slow and gentle wins the race. 

You will need:
- a cross head precision screw diver, probably PH00 size.

Each board will need:
- 2 x 16mm male to female standoffs
- 2 x 16mm female to female standoffs
- 6 x M3 screws

## Rack tray

Screw the front two screw holes of the pi, nearest the USB and ethernet ports, to the rack mount tray using two 16mm
male to female standoffs.

You will regret it if you do not do this first.

## Preparing the Pi

The hat comes with,
- thermal tape
- metal heatsink

The thermal tape has protective plastic on both sides, one thicker, the other is just film. Peel the thicker plastic off
first, then apply to the chip, then use a tiny flat head screwdriver to peel off the film. Keep the film until you
have finished this step so you know how many thermal tape strips you have applied.

Put the thermal tape on the three chips pictured:

[photo]

Put the heat sink on in this orientation. It is a pain to take off again so ensure you get it the correct way round.

[photo]

The hat comes with a PCIE ribbon. Use two fingers to open the PCIE slot on the Pi.
Connect to the PCIE slot on the pi, with the text facing out and the arrows closest to
the Ethernet port. Close the PCIE slot.

[photo]

Remove the fan connector cover, located behind the outer USB ports.

[photo]

## Preparing the Hat

On the PoE/NVMe hat, hold a screw in one of the screw holes. Screw on a standoff. Repeat for all standoffs.

Route the fan cable to the side of the GPIO pins.

[photo]

Connect the fan cable to the pi, with the red wire on the right, nearest the ethernet port.

To connect the official Ras Pi NVMe drive, remove the stocker on the 2230 screw hole. Insert the drive into the NVMe
connector. Remove the screw from the 2242 slot. Note the screw has a notch and the NVMe drive has a cutout. Put the
drive cutout in the screw notch, then screw into the 2230 screw hole feather tight.

## Hatting the Pi

Align the GPIO pins and the PoE pins.

Gently ease the pins into the receiving ports on the hat. You may need to gently nudge the heat sink out of the way with
a small flat screwdriver.

Open the PCIE port on the hat. The black clamp hinges upward. Insert the PCIE ribbon. Close the clamp.

## Rack Mount

Put the rack trays in the rack frame. Gently press the quick release pegs in until they click.

## Repeat for all RPi's

Through the magic of buying [~~two~~](https://youtu.be/CZs-YcmxyUw) twelve of them, you now have a Raspberry Pi cluster.